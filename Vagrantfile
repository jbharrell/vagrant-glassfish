box	= 'precise64'
url	= 'http://files.vagrantup.com/precise64.box'
ram = '2048'

Vagrant.configure("2") do |config|
	config.vm.box = box
	config.vm.box_url = url
	
	config.vm.provider "virtualbox" do |vb|
		vb.customize [
			'modifyvm', :id,
			'--memory', ram
		]
	end
	
end