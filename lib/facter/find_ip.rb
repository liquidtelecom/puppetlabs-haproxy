Puppet::Functions.create_function(:find_ip) do
    def find_ip(hostname)
        the_ip = nil
        begin
            the_ip = IPSocket.getaddress(hostname)
        rescue SocketError
        end
        return the_ip
    end
end
