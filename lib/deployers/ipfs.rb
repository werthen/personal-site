module Nanoc::Deploying::Deployers
  class IPFS < ::Nanoc::Deploying::Deployer
    identifier :ipfs

    def run
      dir_hash = `ipfs add -r #{source_path} | tail -n1 | cut -d' ' -f2`
      puts "Publishing #{dir_hash}"
      puts `ipfs name publish #{dir_hash}`
    end
  end
end
