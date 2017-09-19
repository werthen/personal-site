module Nanoc::Deploying::Deployers
  class IPFS < ::Nanoc::Deploying::Deployer
    identifier :ipfs

    def run
      if @dry_run
        "ipfs add -r #{source_path} | tail -n1 | cut -d' ' -f2"
      else
        dir_hash = `ipfs add -r #{source_path} | tail -n1 | cut -d' ' -f2`
        puts "Publishing #{dir_hash}"
      end

      if @dry_run
        puts "ipfs name publish #{dir_hash}"
      else
        puts `ipfs name publish #{dir_hash}`
        puts `ssh merkur "IPFS_PATH=/var/lib/ipfs ipfs pin add -r /ipfs/#{dir_hash}"`
      end
    end
  end
end
