contract main {




// =====================  Runtime code  =====================


address governanceAddress;
address adminAddress;

function governance() payable {
    return governanceAddress
}

function admin() payable {
    return adminAddress
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f41584445585f566f74696e674578656375746f723a204e6f742066726f6d20766f74696e,
                    mem[202 len 26]
    require 0 < ('cd', 4).length
    require 1 < ('cd', 4).length
    if ('cd', 4).length == 4:
        if ('cd', 4)[0] != 'setVotingConfig':
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x734f41584445585f566f74696e674578656375746f723a20556e6b6e6f776e20636f6d6d616e,
                        mem[202 len 26]
        require 2 < ('cd', 4).length
        require 3 < ('cd', 4).length
        require ext_code.size(governanceAddress)
        call governanceAddress.setVotingConfig(bytes32 arg1, bytes32 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args ('cd', 4)[1], ('cd', 4)[2], ('cd', 4)[3]
    else:
        if ('cd', 4).length == 2:
            if 'setMinStakePeriod' == ('cd', 4)[0]:
                require ext_code.size(governanceAddress)
                call governanceAddress.setMinStakePeriod(uint256 arg1) with:
                     gas gas_remaining wei
                    args ('cd', 4)[1]
            else:
                if 'setMaxAdmin' == ('cd', 4)[0]:
                    require ext_code.size(adminAddress)
                    call adminAddress.setMaxAdmin(uint256 arg1) with:
                         gas gas_remaining wei
                        args ('cd', 4)[1]
                else:
                    if 'addAdmin' == ('cd', 4)[0]:
                        require ext_code.size(adminAddress)
                        call adminAddress.addAdmin(address arg1) with:
                             gas gas_remaining wei
                            args (address(('cd', 4)[1]) >> 96)
                    else:
                        if 'removeAdmin' == ('cd', 4)[0]:
                            require ext_code.size(adminAddress)
                            call adminAddress.removeAdmin(address arg1) with:
                                 gas gas_remaining wei
                                args (address(('cd', 4)[1]) >> 96)
                        else:
                            if ('cd', 4)[0] != 'setAdmin':
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            38,
                                            0x734f41584445585f566f74696e674578656375746f723a20556e6b6e6f776e20636f6d6d616e,
                                            mem[202 len 26]
                            require ext_code.size(governanceAddress)
                            call governanceAddress.setAdmin(address arg1) with:
                                 gas gas_remaining wei
                                args (address(('cd', 4)[1]) >> 96)
        else:
            if ('cd', 4).length == 3:
                if ('cd', 4)[0] != 'setVotingExecutor':
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x734f41584445585f566f74696e674578656375746f723a20556e6b6e6f776e20636f6d6d616e,
                                mem[202 len 26]
                require 2 < ('cd', 4).length
                require ext_code.size(governanceAddress)
                call governanceAddress.setVotingExecutor(address arg1, bool arg2) with:
                     gas gas_remaining wei
                    args Mask(64, 96, ('cd', 4)[1]) << 96, bool(('cd', 4)[2])
            else:
                if ('cd', 4).length != 7:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                41,
                                0x674f41584445585f566f74696e674578656375746f723a20496e76616c696420706172616d65746572,
                                mem[205 len 23]
                if ('cd', 4)[0] != 'addVotingConfig':
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x734f41584445585f566f74696e674578656375746f723a20556e6b6e6f776e20636f6d6d616e,
                                mem[202 len 26]
                require 2 < ('cd', 4).length
                require 3 < ('cd', 4).length
                require 4 < ('cd', 4).length
                require 5 < ('cd', 4).length
                require 6 < ('cd', 4).length
                require ext_code.size(governanceAddress)
                call governanceAddress.addVotingConfig(bytes32 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args 0, uint32(('cd', 4)[1]), ('cd', 4)[2], ('cd', 4)[3], ('cd', 4)[4], ('cd', 4)[5], ('cd', 4)[6]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
