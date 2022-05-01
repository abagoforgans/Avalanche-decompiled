contract main {




// =====================  Runtime code  =====================


const soul = ext_code.hash(this.address)


function _fallback() payable {
    revert
}

function run() payable {
    require ext_code.size(0xbd5c50422bdb47668fd393c4ae15dcbb5f0f25b)
    staticcall 0xbd5c50422bdb47668fd393c4ae15dcbb5f0f25b.0xc60f54f4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xbd5c50422bdb47668fd393c4ae15dcbb5f0f25b)
    staticcall 0xbd5c50422bdb47668fd393c4ae15dcbb5f0f25b.0x7149215e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xbd5c50422bdb47668fd393c4ae15dcbb5f0f25b)
    staticcall 0xbd5c50422bdb47668fd393c4ae15dcbb5f0f25b.src() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xbd5c50422bdb47668fd393c4ae15dcbb5f0f25b)
    staticcall 0xbd5c50422bdb47668fd393c4ae15dcbb5f0f25b.token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xbd5c50422bdb47668fd393c4ae15dcbb5f0f25b)
    staticcall 0xbd5c50422bdb47668fd393c4ae15dcbb5f0f25b.cap() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    create contract with 0 wei
                    code: code.data[5067 len 10781], address(ext_call.return_data[0]), address(ext_call.return_data[0]), address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).kiss(address arg1) with:
         gas gas_remaining wei
        args 0xb640b3e91420b495a33d11ee96afb19be2db693
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).poke() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).kiss(address arg1) with:
         gas gas_remaining wei
        args 0x7c4925d62d24a826f8d945130e620fdc510d0f68
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).kiss(address arg1) with:
         gas gas_remaining wei
        args 0x67d8cda3131890a0603379b03cd1b8ed39753da6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).kiss(address arg1) with:
         gas gas_remaining wei
        args 0xf49390ee384c5df2e82ac99909a6236051a4e82b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).kiss(address arg1) with:
         gas gas_remaining wei
        args 0xc5065b47a133071fe8cd94f46950fcfba53864c6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).kiss(address arg1) with:
         gas gas_remaining wei
        args 0x7ba715959a52ef046be76c4e32f1de1d161e2888
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).kiss(address arg1) with:
         gas gas_remaining wei
        args 0xebcb52e5696a2a90d684c76cdf7095534f265370
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xf49390ee384c5df2e82ac99909a6236051a4e82b)
    call 0xf49390ee384c5df2e82ac99909a6236051a4e82b.link(address arg1) with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xc5065b47a133071fe8cd94f46950fcfba53864c6)
    staticcall 0xc5065b47a133071fe8cd94f46950fcfba53864c6.orb0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc5065b47a133071fe8cd94f46950fcfba53864c6)
    if ext_call.return_data[12 len 20] == 0xbd5c50422bdb47668fd393c4ae15dcbb5f0f25b:
        call 0xc5065b47a133071fe8cd94f46950fcfba53864c6.link(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args 0, address(create.new_address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        staticcall 0xc5065b47a133071fe8cd94f46950fcfba53864c6.orb1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xbd5c50422bdb47668fd393c4ae15dcbb5f0f25b:
            require ext_code.size(0xc5065b47a133071fe8cd94f46950fcfba53864c6)
            call 0xc5065b47a133071fe8cd94f46950fcfba53864c6.link(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args 1, address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x7ba715959a52ef046be76c4e32f1de1d161e2888)
    staticcall 0x7ba715959a52ef046be76c4e32f1de1d161e2888.orb0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x7ba715959a52ef046be76c4e32f1de1d161e2888)
    if ext_call.return_data[12 len 20] == 0xbd5c50422bdb47668fd393c4ae15dcbb5f0f25b:
        call 0x7ba715959a52ef046be76c4e32f1de1d161e2888.link(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args 0, address(create.new_address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        staticcall 0x7ba715959a52ef046be76c4e32f1de1d161e2888.orb1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xbd5c50422bdb47668fd393c4ae15dcbb5f0f25b:
            require ext_code.size(0x7ba715959a52ef046be76c4e32f1de1d161e2888)
            call 0x7ba715959a52ef046be76c4e32f1de1d161e2888.link(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args 1, address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xebcb52e5696a2a90d684c76cdf7095534f265370)
    staticcall 0xebcb52e5696a2a90d684c76cdf7095534f265370.orb0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xebcb52e5696a2a90d684c76cdf7095534f265370)
    if ext_call.return_data[12 len 20] == 0xbd5c50422bdb47668fd393c4ae15dcbb5f0f25b:
        call 0xebcb52e5696a2a90d684c76cdf7095534f265370.link(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args 0, address(create.new_address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        staticcall 0xebcb52e5696a2a90d684c76cdf7095534f265370.orb1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xbd5c50422bdb47668fd393c4ae15dcbb5f0f25b:
            require ext_code.size(0xebcb52e5696a2a90d684c76cdf7095534f265370)
            call 0xebcb52e5696a2a90d684c76cdf7095534f265370.link(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args 1, address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xd1a85349d73baa4ffa6737474fdce9347b887cb2)
    call 0xd1a85349d73baa4ffa6737474fdce9347b887cb2.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args 'PIP_JOE', address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x527751ef: 0xbd5c50422bdb47668fd393c4ae15dcbb5f0f25b, address(create.new_address)
}



}
