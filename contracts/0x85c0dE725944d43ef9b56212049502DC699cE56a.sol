contract main {




// =====================  Runtime code  =====================


const epochLength = (168 * 24 * 3600)


address sub_40fa6d2dAddress;
uint256 sub_d172e995;
uint8 stor2;
mapping of address sub_ec364d88;
mapping of uint32 sub_b243823f;
mapping of uint8 stor5;
array of address sub_514ed558;

function sub_1d10fc64(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function isLaunched() payable {
    return bool(stor2)
}

function sub_40fa6d2d(?) payable {
    return sub_40fa6d2dAddress
}

function sub_514ed558(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_514ed558.length
    return sub_514ed558[arg1]
}

function sub_b243823f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return Mask(24, 232, sub_b243823f[arg1] % 16777216)
}

function sub_d172e995(?) payable {
    return sub_d172e995
}

function sub_ec364d88(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(24, 232, arg1)
    return sub_ec364d88[arg1]
}

function _fallback() payable {
    revert
}

function currentEpoch() payable {
    if bool(stor2) != 1:
        return 0
    if block.timestamp < sub_d172e995:
        return 0
    if 1 > !(block.timestamp - sub_d172e995 / 168 * 24 * 3600):
        revert with 'NH{q', 17
    return ((block.timestamp - sub_d172e995 / 168 * 24 * 3600) + 1)
}

function launch() payable {
    if sub_40fa6d2dAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'onlyExecutive(): only the assigned executive can call the function'
    if stor2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot launch(): Proxy is already launched'
    if 1 > !(block.timestamp / 168 * 24 * 3600):
        revert with 'NH{q', 17
    if (block.timestamp / 168 * 24 * 3600) + 1 > 0x1bbd779334ef0aac668223ddf99b557112cce88a446001bbd779334ef0aa:
        revert with 'NH{q', 17
    sub_d172e995 = (168 * 24 * 3600 * block.timestamp / 168 * 24 * 3600) + (168 * 24 * 3600)
    stor2 = 1
}

function sub_c4d1f8f1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 5
    require arg2 == address(arg2)
    if sub_40fa6d2dAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'onlyExecutive(): only the assigned executive can call the function'
    if arg1 > 4:
        revert with 'NH{q', 33
    if not arg1:
        staticcall address(arg2).0x1ae7ec2e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(24, 232, ext_call.return_data[0])
        if sub_ec364d88[Mask(24, 232, ext_call.return_data[0])]:
            revert with 0, 'cannot _installSystem(): Existing system found for keycode'
        sub_ec364d88[Mask(24, 232, ext_call.return_data[0])] = address(arg2)
        uint256(sub_b243823f[address(arg2)]) = ext_call.return_data[0] % 16777216 >> 232 or Mask(232, 24, uint256(sub_b243823f[address(arg2)]))
    else:
        if arg1 > 4:
            revert with 'NH{q', 33
        if arg1 != 1:
            if arg1 > 4:
                revert with 'NH{q', 33
            if arg1 != 2:
                if arg1 > 4:
                    revert with 'NH{q', 33
                if arg1 == 3:
                    if bool(stor5[address(arg2)]) != 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot _terminatePolicy(): Policy is not approved'
                    stor5[address(arg2)] = 0
                else:
                    if arg1 > 4:
                        revert with 'NH{q', 33
                    if arg1 == 4:
                        if Mask(24, 232, sub_b243823f[address(arg2)] % 16777216) != 'EXC':
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'cannot changeExecutive(): target is not the Executive system'
                        sub_40fa6d2dAddress = address(arg2)
            else:
                if stor5[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'cannot _approvePolicy(): Policy is already approved'
                stor5[address(arg2)] = 1
                sub_514ed558.length++
                sub_514ed558[sub_514ed558.length] = address(arg2)
                require ext_code.size(address(arg2))
                call address(arg2).0xe51f9232 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            staticcall address(arg2).0x1ae7ec2e with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(24, 232, ext_call.return_data[0])
            if not sub_ec364d88[Mask(24, 232, ext_call.return_data[0])]:
                revert with 0, 'cannot _upgradeSystem(): an existing system must be upgraded to a new system'
            if sub_ec364d88[Mask(24, 232, ext_call.return_data[0])] == address(arg2):
                revert with 0, 'cannot _upgradeSystem(): an existing system must be upgraded to a new system'
            sub_b243823f[stor3[Mask(24, 232, ext_call.return_data[0])]] % 16777216 = 0
            uint256(sub_b243823f[address(arg2)]) = ext_call.return_data[0] % 16777216 >> 232 or Mask(232, 24, uint256(sub_b243823f[address(arg2)]))
            sub_ec364d88[Mask(24, 232, ext_call.return_data[0])] = address(arg2)
            idx = 0
            while idx < sub_514ed558.length:
                mem[0] = sub_514ed558[idx]
                mem[32] = 5
                if stor5[stor6[idx]]:
                    mem[ceil32(return_data.size) + 96] = 0xe51f923200000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_514ed558[idx])
                    call sub_514ed558[idx].0xe51f9232 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    if arg1 >= 5:
        revert with 'NH{q', 33
    emit 0x6560dd86: arg1, address(arg2)
}



}
