contract main {




// =====================  Runtime code  =====================


address governanceAddress;
address factoryAddress;

function governance() payable {
    return governanceAddress
}

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function sub_8af7c649(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ext_code.size(governanceAddress)
    staticcall governanceAddress.isVotingContract(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not from voting'
    require 0 < ('cd', 4).length
    require 1 < ('cd', 4).length
    if ('cd', 4).length != 2:
        if ('cd', 4).length != 3:
            revert with 0, 'Invalid parameters'
        if ('cd', 4)[0] != 'setLiveForPair':
            revert with 0, 'Unknown command'
        require 2 < ('cd', 4).length
        require ext_code.size(factoryAddress)
        call factoryAddress.setLiveForPair(address arg1, bool arg2) with:
             gas gas_remaining wei
            args Mask(64, 96, ('cd', 4)[1]) << 96, bool(('cd', 4)[2])
    else:
        if 'setTradeFee' == ('cd', 4)[0]:
            require ext_code.size(factoryAddress)
            call factoryAddress.setTradeFee(uint256 arg1) with:
                 gas gas_remaining wei
                args ('cd', 4)[1]
        else:
            if 'setProtocolFee' == ('cd', 4)[0]:
                require ext_code.size(factoryAddress)
                call factoryAddress.setProtocolFee(uint256 arg1) with:
                     gas gas_remaining wei
                    args ('cd', 4)[1]
            else:
                if 'setProtocolFeeTo' == ('cd', 4)[0]:
                    require ext_code.size(factoryAddress)
                    call factoryAddress.setProtocolFeeTo(address arg1) with:
                         gas gas_remaining wei
                        args (address(('cd', 4)[1]) >> 96)
                else:
                    if ('cd', 4)[0] != 'setLive':
                        revert with 0, 'Unknown command'
                    require ext_code.size(factoryAddress)
                    call factoryAddress.setLive(bool arg1) with:
                         gas gas_remaining wei
                        args bool(('cd', 4)[1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
