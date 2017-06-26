module Nanoc::Deploying::Deployers
  class Multiple < ::Nanoc::Deploying::Deployer
    identifier :multiple

    def run
      threads = []

      config[:targets].each do |target|
        new_config = @site_config[:deploy][target.to_sym]

        threads << Thread.new do
          deployer_class = Nanoc::Deploying::Deployer.named(new_config[:kind].to_sym)

          if deployer_class.nil?
            names = Nanoc::Deploying::Deployer.all.map(&:identifier)
            raise Nanoc::Int::Errors::GenericTrivial, "The specified deploy target has an unrecognised kind “#{target}” (expected one of #{names.join(', ')})."
          end

          deployer = deployer_class.new(
            @source_path,
            new_config,
            @site_config,
            dry_run: @dry_run
          )

          deployer.run
        end
      end

      threads.each(&:join)
    end
  end
end
