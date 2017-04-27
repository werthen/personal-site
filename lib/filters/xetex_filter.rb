class XeTeXFilter < Nanoc::Filter
  identifier :xetex
  # rubocop:disable Style/HashSyntax
  type :text => :binary

  def run(content, _params = {})
    Dir.mktmpdir do |dir|
      # Source directory of necessary latex stuff
      src_dir = "content#{File.dirname(@item.identifier.to_s)}/."

      # Basename
      basename = File.basename(@item.identifier.without_ext)
      input = "#{dir}/#{basename}.tex"
      output = "#{dir}/#{basename}.pdf"

      # We copy all these files from the srcdir to the tmp dir
      FileUtils.cp_r(src_dir, dir)
      File.open(input, 'w') { |f| f << content }

      Dir.chdir(dir) do
        puts `xelatex -interaction=nonstopmode -output-directory=#{dir} #{input}`
      end

      FileUtils.cp output, output_filename
    end
  end
end
