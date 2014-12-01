# homedir.rb
Puppet::Parser::Functions.newfunction (:homedir,
     :type => :rvalue
  ) do |args|
   raise ArgumentError, "Expects 1 argument, not #{args.size}" if args.size != 1
   user = args[0]

   case user
   when 'root'
      '/root'
   else 
      "/home/#{user}"
   end
end 
