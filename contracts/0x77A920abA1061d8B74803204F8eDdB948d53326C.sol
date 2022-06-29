contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
address owner;
uint256 vestingStartTimestamp;
uint8 stor2;
uint256 sub_4f4cd396;
uint256 sub_5d38ec99;
uint256 sub_7012f7e5;
address vestingTokenAddress;
array of struct stor7;
mapping of struct sub_c66bf7ce;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432778;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432779;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432780;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432781;

function vestingToken() payable {
    return vestingTokenAddress
}

function sub_4f4cd396(?) payable {
    return sub_4f4cd396
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function sub_5d38ec99(?) payable {
    return sub_5d38ec99
}

function sub_7012f7e5(?) payable {
    return sub_7012f7e5
}

function owner() payable {
    return owner
}

function sub_c66bf7ce(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c66bf7ce[arg1].field_0, sub_c66bf7ce[arg1].field_256, sub_c66bf7ce[arg1].field_512
}

function vestingStartTimestamp() payable {
    return vestingStartTimestamp
}

function sub_f998c8e8(?) payable {
    return bool(uint8(stor0.field_168))
}

function sub_fe6b0759(?) payable {
    return bool(stor2)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_1a52836c(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_168):
        revert with 0, 'Vesting has not started!'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    uint8(stor0.field_160) = 1
    emit Paused(msg.sender);
}

function sub_ec12fc73(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_168):
        revert with 0, 'Vesting has not started!'
    if not uint8(stor0.field_160):
        revert with 0, 'Pausable: not paused'
    uint8(stor0.field_160) = 0
    emit Unpaused(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_36a688e4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_4f4cd396:
        revert with 0, 'Vesting has not been closed!'
    if sub_4f4cd396 > block.timestamp:
        revert with 0, 'Vesting has not been closed!'
    require ext_code.size(vestingTokenAddress)
    staticcall vestingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vestingTokenAddress)
    call vestingTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x6a5e278f: msg.sender, address(arg1), ext_call.return_data[0]
}

function sub_bcc1214c(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_168):
        revert with 0, 'Vesting has not started!'
    if sub_4f4cd396:
        if sub_4f4cd396 <= block.timestamp:
            revert with 0, 'Vesting has been closed!'
    idx = 0
    s = 0
    while idx < stor7.length:
        mem[0] = 7
        if vestingStartTimestamp > !stor7[idx].field_768:
            revert with 0, 17
        if vestingStartTimestamp + stor7[idx].field_768 > !stor7[idx].field_1024:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        if vestingStartTimestamp + stor7[idx].field_768 + stor7[idx].field_1024 <= s:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = vestingStartTimestamp + stor7[idx].field_768 + stor7[idx].field_1024
        continue 
    if s > !sub_5d38ec99:
        revert with 0, 17
    if s + sub_5d38ec99 >= block.timestamp:
        revert with 0, 'Cannot close vesting!'
    stor2 = 1
    if block.timestamp > !sub_7012f7e5:
        revert with 0, 17
    sub_4f4cd396 = block.timestamp + sub_7012f7e5
    emit 0xcb91a907: (block.timestamp + sub_7012f7e5)
}

function sub_94eb9960(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_168):
        revert with 0, 'Vesting has already started!'
    if not address(arg1):
        revert with 0, 'Wrong wallet address specified!'
    if arg2 >= stor7.length:
        revert with 0, 'Invalid groupId!'
    if stor7[arg2].field_256 < stor7[arg2].field_512:
        revert with 0, 17
    if arg3 > stor7[arg2].field_256 - stor7[arg2].field_512:
        revert with 0, 'Vesting amount too high!'
    if sub_c66bf7ce[address(arg1)].field_256:
        if sub_c66bf7ce[address(arg1)].field_0 >= stor7.length:
            revert with 0, 50
        if stor7[stor8[address(arg1)].field_0].field_512 < sub_c66bf7ce[address(arg1)].field_256:
            revert with 0, 17
        stor7[stor8[address(arg1)].field_0].field_512 -= sub_c66bf7ce[address(arg1)].field_256
    sub_c66bf7ce[address(arg1)].field_0 = arg2
    sub_c66bf7ce[address(arg1)].field_256 = arg3
    sub_c66bf7ce[address(arg1)].field_512 = 0
    if arg2 >= stor7.length:
        revert with 0, 50
    if stor7[arg2].field_512 > !arg3:
        revert with 0, 17
    stor7[arg2].field_512 += arg3
    emit 0xd1feacb7: address(arg1), arg2, arg3
}

function sub_7b78b53d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor7.length
    if stor7[arg1].field_0:
        if stor7[arg1].field_0 == uint255(stor7[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor7[arg1].field_0:
            if stor7[arg1].field_0 == uint255(stor7[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7[arg1].field_0):
                if 31 >= uint255(stor7[arg1].field_0) * 0.5:
                    mem[128] = 256 * stor7[arg1].field_8
                else:
                    mem[128] = stor7[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor7[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor7[(6 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
                revert with 0, 34
            if stor7[arg1].field_1:
                if 31 >= stor7[arg1].field_1:
                    mem[128] = 256 * stor7[arg1].field_8
                else:
                    mem[128] = stor7[arg1].field_0
                    idx = 128
                    s = 0
                    while stor7[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor7[(6 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor7[arg1].field_0), data=mem[128 len ceil32(uint255(stor7[arg1].field_0) * 0.5)]), 
               stor7[arg1].field_256,
               stor7[arg1].field_512,
               stor7[arg1].field_768,
               stor7[arg1].field_1024,
               stor7[arg1].field_1280
    if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
        revert with 0, 34
    if stor7[arg1].field_0:
        if stor7[arg1].field_0 == uint255(stor7[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7[arg1].field_0):
            if 31 >= uint255(stor7[arg1].field_0) * 0.5:
                mem[128] = 256 * stor7[arg1].field_8
            else:
                mem[128] = stor7[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor7[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor7[(6 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
            revert with 0, 34
        if stor7[arg1].field_1:
            if 31 >= stor7[arg1].field_1:
                mem[128] = 256 * stor7[arg1].field_8
            else:
                mem[128] = stor7[arg1].field_0
                idx = 128
                s = 0
                while stor7[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor7[(6 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor7[arg1].field_0, data=mem[128 len ceil32(stor7[arg1].field_1)]), 
           stor7[arg1].field_256,
           stor7[arg1].field_512,
           stor7[arg1].field_768,
           stor7[arg1].field_1024,
           stor7[arg1].field_1280
}

function sub_8323a708(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_168):
        revert with 0, 'Vesting has already started!'
    if arg2 <= 0:
        revert with 0, 'Invalid Distribution Amount!'
    if arg4 <= 0:
        revert with 0, 'Invalid Distribution Lenght!'
    if arg5 > 10^18:
        revert with 0, 'Invalid Initial Release!'
    idx = 0
    s = 0
    while idx < stor7.length:
        mem[0] = 7
        if s > !stor7[idx].field_256:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + stor7[idx].field_256
        continue 
    require ext_code.size(vestingTokenAddress)
    staticcall vestingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > !(s * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length):
        revert with 0, 17
    if arg2 + (s * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length) > ext_call.return_data[0]:
        revert with 0, 'Distribution amount too big!'
    stor7.length++
    if stor7[stor7.length].field_0:
        if stor7[stor7.length].field_0 == uint255(stor7[stor7.length].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor7[stor7.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor7[stor7.length].field_0 = 0
            idx = 0
            while (uint255(stor7[stor7.length].field_0) * 0.5) + 31 / 32 > idx:
                stor7[(6 * stor7.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor7[stor7.length].field_0 == stor7[stor7.length].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor7[stor7.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor7[stor7.length].field_0 = 0
            idx = 0
            while stor7[stor7.length].field_1 + 31 / 32 > idx:
                stor7[(6 * stor7.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    storA66C[stor7.length] = arg2
    storA66C[stor7.length] = 0
    storA66C[stor7.length] = arg3
    storA66C[stor7.length] = arg4
    storA66C[stor7.length] = arg5
    if stor7.length < 1:
        revert with 0, 17
    emit 0xfe3a9464: stor7.length - 1, Array(len=arg1.length, data=arg1[all]), arg2, arg3, arg4, arg5
    return (stor7.length - 1)
}

function sub_4a3f2856(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_168):
        revert with 0, 'Vesting has already started!'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Invalid array lengths!'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'Invalid array lengths!'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _209 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _211 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
            revert with 0, 50
        _213 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if uint8(stor0.field_168):
            revert with 0, 'Vesting has already started!'
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'Wrong wallet address specified!'
        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] >= stor7.length:
            revert with 0, 'Invalid groupId!'
        if stor7[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]].field_256 < stor7[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]].field_512:
            revert with 0, 17
        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] > stor7[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]].field_256 - stor7[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]].field_512:
            revert with 0, 'Vesting amount too high!'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        if not sub_c66bf7ce[mem[(32 * idx) + 140 len 20]].field_256:
            _226 = mem[64]
            mem[64] = mem[64] + 96
            mem[_226 + 64] = 0
            mem[_226] = _211
            mem[_226 + 32] = _213
        else:
            mem[32] = 8
            if sub_c66bf7ce[address(mem[(32 * idx) + 128])].field_0 >= stor7.length:
                revert with 0, 50
            mem[0] = 7
            if stor7[stor8[address(mem[(32 * idx) + 128])].field_0].field_512 < sub_c66bf7ce[address(mem[(32 * idx) + 128])].field_256:
                revert with 0, 17
            stor7[stor8[address(mem[(32 * idx) + 128])].field_0].field_512 -= sub_c66bf7ce[address(mem[(32 * idx) + 128])].field_256
            _237 = mem[64]
            mem[64] = mem[64] + 96
            mem[_237 + 64] = 0
            mem[_237] = _211
            mem[_237 + 32] = _213
        mem[32] = 8
        sub_c66bf7ce[address(_209)].field_0 = _211
        sub_c66bf7ce[address(_209)].field_256 = _213
        sub_c66bf7ce[address(_209)].field_512 = 0
        if _211 >= stor7.length:
            revert with 0, 50
        mem[0] = 7
        if stor7[_211].field_512 > !_213:
            revert with 0, 17
        stor7[_211].field_512 += _213
        mem[mem[64]] = address(_209)
        mem[mem[64] + 32] = _211
        mem[mem[64] + 64] = _213
        emit 0xd1feacb7: address(_209), _211, _213
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_0ea27ff7(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_168):
        revert with 0, 'Vesting has already started!'
    if arg1:
        if arg1 <= block.timestamp:
            revert with 0, 'Invalid vesting start!'
    require ext_code.size(vestingTokenAddress)
    staticcall vestingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Vesting Contract has no balance!'
    if not stor7.length:
        revert with 0, 'No groups configured!'
    if not address(arg2):
        revert with 0, 'Return wallet not specified!'
    uint8(stor0.field_168) = 1
    if arg1:
        vestingStartTimestamp = arg1
    else:
        vestingStartTimestamp = block.timestamp
    idx = 0
    s = 0
    while idx < stor7.length:
        mem[0] = 7
        if s > !stor7[idx].field_512:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + stor7[idx].field_512
        continue 
    require ext_code.size(vestingTokenAddress)
    staticcall vestingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < s * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length:
        revert with 0, 17
    if ext_call.return_data[0] - (s * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length):
        require ext_code.size(vestingTokenAddress)
        call vestingTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0] - (s * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length * stor7.length)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit VestingStarted()
}

function checkClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_c66bf7ce[address(arg1)].field_0 >= stor7.length:
        revert with 0, 50
    if not uint8(stor0.field_168):
        if vestingStartTimestamp > !stor7[stor8[address(arg1)].field_0].field_768:
            revert with 0, 17
        if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(arg1)].field_0].field_768:
            if 0 < sub_c66bf7ce[address(arg1)].field_512:
                revert with 0, 17
            return -sub_c66bf7ce[address(arg1)].field_512
        if vestingStartTimestamp > !stor7[stor8[address(arg1)].field_0].field_768:
            revert with 0, 17
        if block.timestamp < vestingStartTimestamp + stor7[stor8[address(arg1)].field_0].field_768:
            revert with 0, 17
        if block.timestamp - vestingStartTimestamp - stor7[stor8[address(arg1)].field_0].field_768 >= stor7[stor8[address(arg1)].field_0].field_1024:
            if sub_c66bf7ce[address(arg1)].field_256 < sub_c66bf7ce[address(arg1)].field_512:
                revert with 0, 17
            return (sub_c66bf7ce[address(arg1)].field_256 - sub_c66bf7ce[address(arg1)].field_512)
        if sub_c66bf7ce[address(arg1)].field_256 < 0:
            revert with 0, 17
        if vestingStartTimestamp > !stor7[stor8[address(arg1)].field_0].field_768:
            revert with 0, 17
        if block.timestamp < vestingStartTimestamp + stor7[stor8[address(arg1)].field_0].field_768:
            revert with 0, 17
        if block.timestamp - vestingStartTimestamp - stor7[stor8[address(arg1)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor7[stor8[address(arg1)].field_0].field_1024:
            revert with 0, 18
        if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(arg1)].field_0].field_768) / stor7[stor8[address(arg1)].field_0].field_1024 and sub_c66bf7ce[address(arg1)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(arg1)].field_0].field_768) / stor7[stor8[address(arg1)].field_0].field_1024:
            revert with 0, 17
        if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(arg1)].field_0].field_768) / stor7[stor8[address(arg1)].field_0].field_1024 * sub_c66bf7ce[address(arg1)].field_256 / 10^18):
            revert with 0, 17
        if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(arg1)].field_0].field_768) / stor7[stor8[address(arg1)].field_0].field_1024 * sub_c66bf7ce[address(arg1)].field_256 / 10^18 < sub_c66bf7ce[address(arg1)].field_512:
            revert with 0, 17
        return (((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(arg1)].field_0].field_768) / stor7[stor8[address(arg1)].field_0].field_1024 * sub_c66bf7ce[address(arg1)].field_256 / 10^18) - sub_c66bf7ce[address(arg1)].field_512)
    if vestingStartTimestamp > block.timestamp:
        if vestingStartTimestamp > !stor7[stor8[address(arg1)].field_0].field_768:
            revert with 0, 17
        if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(arg1)].field_0].field_768:
            if 0 < sub_c66bf7ce[address(arg1)].field_512:
                revert with 0, 17
            return -sub_c66bf7ce[address(arg1)].field_512
        if vestingStartTimestamp > !stor7[stor8[address(arg1)].field_0].field_768:
            revert with 0, 17
        if block.timestamp < vestingStartTimestamp + stor7[stor8[address(arg1)].field_0].field_768:
            revert with 0, 17
        if block.timestamp - vestingStartTimestamp - stor7[stor8[address(arg1)].field_0].field_768 >= stor7[stor8[address(arg1)].field_0].field_1024:
            if sub_c66bf7ce[address(arg1)].field_256 < sub_c66bf7ce[address(arg1)].field_512:
                revert with 0, 17
            return (sub_c66bf7ce[address(arg1)].field_256 - sub_c66bf7ce[address(arg1)].field_512)
        if sub_c66bf7ce[address(arg1)].field_256 < 0:
            revert with 0, 17
        if vestingStartTimestamp > !stor7[stor8[address(arg1)].field_0].field_768:
            revert with 0, 17
        if block.timestamp < vestingStartTimestamp + stor7[stor8[address(arg1)].field_0].field_768:
            revert with 0, 17
        if block.timestamp - vestingStartTimestamp - stor7[stor8[address(arg1)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor7[stor8[address(arg1)].field_0].field_1024:
            revert with 0, 18
        if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(arg1)].field_0].field_768) / stor7[stor8[address(arg1)].field_0].field_1024 and sub_c66bf7ce[address(arg1)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(arg1)].field_0].field_768) / stor7[stor8[address(arg1)].field_0].field_1024:
            revert with 0, 17
        if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(arg1)].field_0].field_768) / stor7[stor8[address(arg1)].field_0].field_1024 * sub_c66bf7ce[address(arg1)].field_256 / 10^18):
            revert with 0, 17
        if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(arg1)].field_0].field_768) / stor7[stor8[address(arg1)].field_0].field_1024 * sub_c66bf7ce[address(arg1)].field_256 / 10^18 < sub_c66bf7ce[address(arg1)].field_512:
            revert with 0, 17
        return (((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(arg1)].field_0].field_768) / stor7[stor8[address(arg1)].field_0].field_1024 * sub_c66bf7ce[address(arg1)].field_256 / 10^18) - sub_c66bf7ce[address(arg1)].field_512)
    if stor7[stor8[address(arg1)].field_0].field_1280 and sub_c66bf7ce[address(arg1)].field_256 > -1 / stor7[stor8[address(arg1)].field_0].field_1280:
        revert with 0, 17
    if vestingStartTimestamp > !stor7[stor8[address(arg1)].field_0].field_768:
        revert with 0, 17
    if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(arg1)].field_0].field_768:
        if stor7[stor8[address(arg1)].field_0].field_1280 * sub_c66bf7ce[address(arg1)].field_256 / 10^18 < sub_c66bf7ce[address(arg1)].field_512:
            revert with 0, 17
        return ((stor7[stor8[address(arg1)].field_0].field_1280 * sub_c66bf7ce[address(arg1)].field_256 / 10^18) - sub_c66bf7ce[address(arg1)].field_512)
    if vestingStartTimestamp > !stor7[stor8[address(arg1)].field_0].field_768:
        revert with 0, 17
    if block.timestamp < vestingStartTimestamp + stor7[stor8[address(arg1)].field_0].field_768:
        revert with 0, 17
    if block.timestamp - vestingStartTimestamp - stor7[stor8[address(arg1)].field_0].field_768 >= stor7[stor8[address(arg1)].field_0].field_1024:
        if sub_c66bf7ce[address(arg1)].field_256 < sub_c66bf7ce[address(arg1)].field_512:
            revert with 0, 17
        return (sub_c66bf7ce[address(arg1)].field_256 - sub_c66bf7ce[address(arg1)].field_512)
    if sub_c66bf7ce[address(arg1)].field_256 < stor7[stor8[address(arg1)].field_0].field_1280 * sub_c66bf7ce[address(arg1)].field_256 / 10^18:
        revert with 0, 17
    if vestingStartTimestamp > !stor7[stor8[address(arg1)].field_0].field_768:
        revert with 0, 17
    if block.timestamp < vestingStartTimestamp + stor7[stor8[address(arg1)].field_0].field_768:
        revert with 0, 17
    if block.timestamp - vestingStartTimestamp - stor7[stor8[address(arg1)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not stor7[stor8[address(arg1)].field_0].field_1024:
        revert with 0, 18
    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(arg1)].field_0].field_768) / stor7[stor8[address(arg1)].field_0].field_1024 and sub_c66bf7ce[address(arg1)].field_256 - (stor7[stor8[address(arg1)].field_0].field_1280 * sub_c66bf7ce[address(arg1)].field_256 / 10^18) > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(arg1)].field_0].field_768) / stor7[stor8[address(arg1)].field_0].field_1024:
        revert with 0, 17
    if stor7[stor8[address(arg1)].field_0].field_1280 * sub_c66bf7ce[address(arg1)].field_256 / 10^18 > !((sub_c66bf7ce[address(arg1)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(arg1)].field_0].field_768) / stor7[stor8[address(arg1)].field_0].field_1024) - (stor7[stor8[address(arg1)].field_0].field_1280 * sub_c66bf7ce[address(arg1)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(arg1)].field_0].field_768) / stor7[stor8[address(arg1)].field_0].field_1024) / 10^18):
        revert with 0, 17
    if (stor7[stor8[address(arg1)].field_0].field_1280 * sub_c66bf7ce[address(arg1)].field_256 / 10^18) + ((sub_c66bf7ce[address(arg1)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(arg1)].field_0].field_768) / stor7[stor8[address(arg1)].field_0].field_1024) - (stor7[stor8[address(arg1)].field_0].field_1280 * sub_c66bf7ce[address(arg1)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(arg1)].field_0].field_768) / stor7[stor8[address(arg1)].field_0].field_1024) / 10^18) < sub_c66bf7ce[address(arg1)].field_512:
        revert with 0, 17
    return ((stor7[stor8[address(arg1)].field_0].field_1280 * sub_c66bf7ce[address(arg1)].field_256 / 10^18) + ((sub_c66bf7ce[address(arg1)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(arg1)].field_0].field_768) / stor7[stor8[address(arg1)].field_0].field_1024) - (stor7[stor8[address(arg1)].field_0].field_1280 * sub_c66bf7ce[address(arg1)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(arg1)].field_0].field_768) / stor7[stor8[address(arg1)].field_0].field_1024) / 10^18) - sub_c66bf7ce[address(arg1)].field_512)
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_168):
        revert with 0, 'Vesting has not started!'
    if sub_4f4cd396:
        if sub_4f4cd396 <= block.timestamp:
            revert with 0, 'Vesting has been closed!'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if sub_c66bf7ce[address(msg.sender)].field_0 >= stor7.length:
        revert with 0, 50
    if not uint8(stor0.field_168):
        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
            revert with 0, 17
        if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
            if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                revert with 0, 17
            if -sub_c66bf7ce[address(msg.sender)].field_512 < arg1:
                revert with 0, 'Claim amount too high!'
        else:
            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                revert with 0, 17
            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                revert with 0, 17
            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                    revert with 0, 17
                if sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512 < arg1:
                    revert with 0, 'Claim amount too high!'
            else:
                if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                    revert with 0, 17
                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                    revert with 0, 17
                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                    revert with 0, 17
                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                    revert with 0, 18
                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                    revert with 0, 17
                if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                    revert with 0, 17
                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                    revert with 0, 17
                if ((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512 < arg1:
                    revert with 0, 'Claim amount too high!'
    else:
        if vestingStartTimestamp > block.timestamp:
            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                revert with 0, 17
            if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                    revert with 0, 17
                if -sub_c66bf7ce[address(msg.sender)].field_512 < arg1:
                    revert with 0, 'Claim amount too high!'
            else:
                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                    revert with 0, 17
                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                    revert with 0, 17
                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                    if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                        revert with 0, 17
                    if sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512 < arg1:
                        revert with 0, 'Claim amount too high!'
                else:
                    if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                        revert with 0, 17
                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                        revert with 0, 18
                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                        revert with 0, 17
                    if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                        revert with 0, 17
                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                        revert with 0, 17
                    if ((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512 < arg1:
                        revert with 0, 'Claim amount too high!'
        else:
            if stor7[stor8[address(msg.sender)].field_0].field_1280 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / stor7[stor8[address(msg.sender)].field_0].field_1280:
                revert with 0, 17
            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                revert with 0, 17
            if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                    revert with 0, 17
                if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512 < arg1:
                    revert with 0, 'Claim amount too high!'
            else:
                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                    revert with 0, 17
                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                    revert with 0, 17
                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                    if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                        revert with 0, 17
                    if sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512 < arg1:
                        revert with 0, 'Claim amount too high!'
                else:
                    if sub_c66bf7ce[address(msg.sender)].field_256 < stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                        revert with 0, 17
                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                        revert with 0, 18
                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                        revert with 0, 17
                    if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 > !((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18):
                        revert with 0, 17
                    if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) < sub_c66bf7ce[address(msg.sender)].field_512:
                        revert with 0, 17
                    if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512 < arg1:
                        revert with 0, 'Claim amount too high!'
    if sub_c66bf7ce[msg.sender].field_512 > !arg1:
        revert with 0, 17
    sub_c66bf7ce[msg.sender].field_512 += arg1
    require ext_code.size(vestingTokenAddress)
    call vestingTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit TokensClaimed(msg.sender, sub_c66bf7ce[msg.sender].field_0, arg1);
}

function claimAll() payable {
    if not uint8(stor0.field_168):
        revert with 0, 'Vesting has not started!'
    if sub_4f4cd396:
        if sub_4f4cd396 <= block.timestamp:
            revert with 0, 'Vesting has been closed!'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if sub_c66bf7ce[address(msg.sender)].field_0 >= stor7.length:
        revert with 0, 50
    if not uint8(stor0.field_168):
        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
            revert with 0, 17
        if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
            if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                revert with 0, 17
            if not uint8(stor0.field_168):
                revert with 0, 'Vesting has not started!'
            if sub_4f4cd396:
                if sub_4f4cd396 <= block.timestamp:
                    revert with 0, 'Vesting has been closed!'
            if uint8(stor0.field_160):
                revert with 0, 'Pausable: paused'
            if sub_c66bf7ce[address(msg.sender)].field_0 >= stor7.length:
                revert with 0, 50
            if not uint8(stor0.field_168):
                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                    revert with 0, 17
                if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                    if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                        revert with 0, 17
                    if -sub_c66bf7ce[address(msg.sender)].field_512 < -sub_c66bf7ce[address(msg.sender)].field_512:
                        revert with 0, 'Claim amount too high!'
                else:
                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                        if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                            revert with 0, 17
                        if sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512 < -sub_c66bf7ce[address(msg.sender)].field_512:
                            revert with 0, 'Claim amount too high!'
                    else:
                        if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                            revert with 0, 17
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                            revert with 0, 18
                        if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                            revert with 0, 17
                        if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                            revert with 0, 17
                        if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                            revert with 0, 17
                        if ((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512 < -sub_c66bf7ce[address(msg.sender)].field_512:
                            revert with 0, 'Claim amount too high!'
            else:
                if vestingStartTimestamp > block.timestamp:
                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                        if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                            revert with 0, 17
                        if -sub_c66bf7ce[address(msg.sender)].field_512 < -sub_c66bf7ce[address(msg.sender)].field_512:
                            revert with 0, 'Claim amount too high!'
                    else:
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                            if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512 < -sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 'Claim amount too high!'
                        else:
                            if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                                revert with 0, 17
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                revert with 0, 18
                            if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                revert with 0, 17
                            if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                                revert with 0, 17
                            if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if ((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512 < -sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 'Claim amount too high!'
                else:
                    if stor7[stor8[address(msg.sender)].field_0].field_1280 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / stor7[stor8[address(msg.sender)].field_0].field_1280:
                        revert with 0, 17
                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                        if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                            revert with 0, 17
                        if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512 < -sub_c66bf7ce[address(msg.sender)].field_512:
                            revert with 0, 'Claim amount too high!'
                    else:
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                            if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512 < -sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 'Claim amount too high!'
                        else:
                            if sub_c66bf7ce[address(msg.sender)].field_256 < stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                revert with 0, 17
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                revert with 0, 18
                            if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                revert with 0, 17
                            if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 > !((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18):
                                revert with 0, 17
                            if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512 < -sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 'Claim amount too high!'
            if sub_c66bf7ce[msg.sender].field_512 > !-sub_c66bf7ce[address(msg.sender)].field_512:
                revert with 0, 17
            sub_c66bf7ce[msg.sender].field_512 -= sub_c66bf7ce[address(msg.sender)].field_512
            require ext_code.size(vestingTokenAddress)
            call vestingTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, -sub_c66bf7ce[address(msg.sender)].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit TokensClaimed(msg.sender, sub_c66bf7ce[msg.sender].field_0, -sub_c66bf7ce[address(msg.sender)].field_512);
        else:
            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                revert with 0, 17
            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                revert with 0, 17
            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                    revert with 0, 17
                if not uint8(stor0.field_168):
                    revert with 0, 'Vesting has not started!'
                if sub_4f4cd396:
                    if sub_4f4cd396 <= block.timestamp:
                        revert with 0, 'Vesting has been closed!'
                if uint8(stor0.field_160):
                    revert with 0, 'Pausable: paused'
                if sub_c66bf7ce[address(msg.sender)].field_0 >= stor7.length:
                    revert with 0, 50
                if not uint8(stor0.field_168):
                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                        if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                            revert with 0, 17
                        if -sub_c66bf7ce[address(msg.sender)].field_512 < sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512:
                            revert with 0, 'Claim amount too high!'
                    else:
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                            if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                        else:
                            if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                                revert with 0, 17
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                revert with 0, 18
                            if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                revert with 0, 17
                            if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                                revert with 0, 17
                            if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_256:
                                revert with 0, 'Claim amount too high!'
                else:
                    if vestingStartTimestamp > block.timestamp:
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if -sub_c66bf7ce[address(msg.sender)].field_512 < sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 'Claim amount too high!'
                        else:
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                            else:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                                    revert with 0, 17
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 18
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 17
                                if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                                    revert with 0, 17
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_256:
                                    revert with 0, 'Claim amount too high!'
                    else:
                        if stor7[stor8[address(msg.sender)].field_0].field_1280 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / stor7[stor8[address(msg.sender)].field_0].field_1280:
                            revert with 0, 17
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_256:
                                revert with 0, 'Claim amount too high!'
                        else:
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                            else:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                    revert with 0, 17
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 18
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 17
                                if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 > !((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18):
                                    revert with 0, 17
                                if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) < sub_c66bf7ce[address(msg.sender)].field_256:
                                    revert with 0, 'Claim amount too high!'
                if sub_c66bf7ce[msg.sender].field_512 > !(sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512):
                    revert with 0, 17
                sub_c66bf7ce[msg.sender].field_512 = sub_c66bf7ce[msg.sender].field_512 + sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512
                require ext_code.size(vestingTokenAddress)
                call vestingTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TokensClaimed(msg.sender, sub_c66bf7ce[msg.sender].field_0, sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512);
            else:
                if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                    revert with 0, 17
                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                    revert with 0, 17
                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                    revert with 0, 17
                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                    revert with 0, 18
                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                    revert with 0, 17
                if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                    revert with 0, 17
                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                    revert with 0, 17
                if not uint8(stor0.field_168):
                    revert with 0, 'Vesting has not started!'
                if sub_4f4cd396:
                    if sub_4f4cd396 <= block.timestamp:
                        revert with 0, 'Vesting has been closed!'
                if uint8(stor0.field_160):
                    revert with 0, 'Pausable: paused'
                if sub_c66bf7ce[address(msg.sender)].field_0 >= stor7.length:
                    revert with 0, 50
                if not uint8(stor0.field_168):
                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                        if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                            revert with 0, 17
                        if -sub_c66bf7ce[address(msg.sender)].field_512 < ((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512:
                            revert with 0, 'Claim amount too high!'
                    else:
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                            if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if sub_c66bf7ce[address(msg.sender)].field_256 < (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                revert with 0, 'Claim amount too high!'
                        else:
                            if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                                revert with 0, 17
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                revert with 0, 18
                            if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                revert with 0, 17
                            if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                                revert with 0, 17
                            if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                else:
                    if vestingStartTimestamp > block.timestamp:
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if -sub_c66bf7ce[address(msg.sender)].field_512 < ((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 'Claim amount too high!'
                        else:
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if sub_c66bf7ce[address(msg.sender)].field_256 < (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                    revert with 0, 'Claim amount too high!'
                            else:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                                    revert with 0, 17
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 18
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 17
                                if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                                    revert with 0, 17
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                    else:
                        if stor7[stor8[address(msg.sender)].field_0].field_1280 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / stor7[stor8[address(msg.sender)].field_0].field_1280:
                            revert with 0, 17
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                revert with 0, 'Claim amount too high!'
                        else:
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if sub_c66bf7ce[address(msg.sender)].field_256 < (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                    revert with 0, 'Claim amount too high!'
                            else:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                    revert with 0, 17
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 18
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 17
                                if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 > !((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18):
                                    revert with 0, 17
                                if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) < (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                    revert with 0, 'Claim amount too high!'
                if sub_c66bf7ce[msg.sender].field_512 > !(((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512):
                    revert with 0, 17
                sub_c66bf7ce[msg.sender].field_512 = sub_c66bf7ce[msg.sender].field_512 + ((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512
                require ext_code.size(vestingTokenAddress)
                call vestingTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TokensClaimed(msg.sender, sub_c66bf7ce[msg.sender].field_0, ((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512);
    else:
        if vestingStartTimestamp > block.timestamp:
            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                revert with 0, 17
            if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                    revert with 0, 17
                if not uint8(stor0.field_168):
                    revert with 0, 'Vesting has not started!'
                if sub_4f4cd396:
                    if sub_4f4cd396 <= block.timestamp:
                        revert with 0, 'Vesting has been closed!'
                if uint8(stor0.field_160):
                    revert with 0, 'Pausable: paused'
                if sub_c66bf7ce[address(msg.sender)].field_0 >= stor7.length:
                    revert with 0, 50
                if not uint8(stor0.field_168):
                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                        if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                            revert with 0, 17
                        if -sub_c66bf7ce[address(msg.sender)].field_512 < -sub_c66bf7ce[address(msg.sender)].field_512:
                            revert with 0, 'Claim amount too high!'
                    else:
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                            if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512 < -sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 'Claim amount too high!'
                        else:
                            if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                                revert with 0, 17
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                revert with 0, 18
                            if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                revert with 0, 17
                            if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                                revert with 0, 17
                            if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if ((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512 < -sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 'Claim amount too high!'
                else:
                    if vestingStartTimestamp > block.timestamp:
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if -sub_c66bf7ce[address(msg.sender)].field_512 < -sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 'Claim amount too high!'
                        else:
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512 < -sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 'Claim amount too high!'
                            else:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                                    revert with 0, 17
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 18
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 17
                                if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                                    revert with 0, 17
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if ((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512 < -sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 'Claim amount too high!'
                    else:
                        if stor7[stor8[address(msg.sender)].field_0].field_1280 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / stor7[stor8[address(msg.sender)].field_0].field_1280:
                            revert with 0, 17
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512 < -sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 'Claim amount too high!'
                        else:
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512 < -sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 'Claim amount too high!'
                            else:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                    revert with 0, 17
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 18
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 17
                                if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 > !((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18):
                                    revert with 0, 17
                                if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512 < -sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 'Claim amount too high!'
                if sub_c66bf7ce[msg.sender].field_512 > !-sub_c66bf7ce[address(msg.sender)].field_512:
                    revert with 0, 17
                sub_c66bf7ce[msg.sender].field_512 -= sub_c66bf7ce[address(msg.sender)].field_512
                require ext_code.size(vestingTokenAddress)
                call vestingTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -sub_c66bf7ce[address(msg.sender)].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TokensClaimed(msg.sender, sub_c66bf7ce[msg.sender].field_0, -sub_c66bf7ce[address(msg.sender)].field_512);
            else:
                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                    revert with 0, 17
                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                    revert with 0, 17
                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                    if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                        revert with 0, 17
                    if not uint8(stor0.field_168):
                        revert with 0, 'Vesting has not started!'
                    if sub_4f4cd396:
                        if sub_4f4cd396 <= block.timestamp:
                            revert with 0, 'Vesting has been closed!'
                    if uint8(stor0.field_160):
                        revert with 0, 'Pausable: paused'
                    if sub_c66bf7ce[address(msg.sender)].field_0 >= stor7.length:
                        revert with 0, 50
                    if not uint8(stor0.field_168):
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if -sub_c66bf7ce[address(msg.sender)].field_512 < sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 'Claim amount too high!'
                        else:
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                            else:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                                    revert with 0, 17
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 18
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 17
                                if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                                    revert with 0, 17
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_256:
                                    revert with 0, 'Claim amount too high!'
                    else:
                        if vestingStartTimestamp > block.timestamp:
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if -sub_c66bf7ce[address(msg.sender)].field_512 < sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 'Claim amount too high!'
                            else:
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                        revert with 0, 17
                                else:
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                                        revert with 0, 17
                                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                        revert with 0, 17
                                    if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                        revert with 0, 17
                                    if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                        revert with 0, 18
                                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                        revert with 0, 17
                                    if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                                        revert with 0, 17
                                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                        revert with 0, 17
                                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_256:
                                        revert with 0, 'Claim amount too high!'
                        else:
                            if stor7[stor8[address(msg.sender)].field_0].field_1280 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / stor7[stor8[address(msg.sender)].field_0].field_1280:
                                revert with 0, 17
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_256:
                                    revert with 0, 'Claim amount too high!'
                            else:
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                        revert with 0, 17
                                else:
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                        revert with 0, 17
                                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                        revert with 0, 17
                                    if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                        revert with 0, 17
                                    if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                        revert with 0, 18
                                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                        revert with 0, 17
                                    if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 > !((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18):
                                        revert with 0, 17
                                    if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) < sub_c66bf7ce[address(msg.sender)].field_512:
                                        revert with 0, 17
                                    if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) < sub_c66bf7ce[address(msg.sender)].field_256:
                                        revert with 0, 'Claim amount too high!'
                    if sub_c66bf7ce[msg.sender].field_512 > !(sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512):
                        revert with 0, 17
                    sub_c66bf7ce[msg.sender].field_512 = sub_c66bf7ce[msg.sender].field_512 + sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit TokensClaimed(msg.sender, sub_c66bf7ce[msg.sender].field_0, sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512);
                else:
                    if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                        revert with 0, 17
                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                        revert with 0, 18
                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                        revert with 0, 17
                    if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                        revert with 0, 17
                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                        revert with 0, 17
                    if not uint8(stor0.field_168):
                        revert with 0, 'Vesting has not started!'
                    if sub_4f4cd396:
                        if sub_4f4cd396 <= block.timestamp:
                            revert with 0, 'Vesting has been closed!'
                    if uint8(stor0.field_160):
                        revert with 0, 'Pausable: paused'
                    if sub_c66bf7ce[address(msg.sender)].field_0 >= stor7.length:
                        revert with 0, 50
                    if not uint8(stor0.field_168):
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if -sub_c66bf7ce[address(msg.sender)].field_512 < ((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 'Claim amount too high!'
                        else:
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if sub_c66bf7ce[address(msg.sender)].field_256 < (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                    revert with 0, 'Claim amount too high!'
                            else:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                                    revert with 0, 17
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 18
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 17
                                if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                                    revert with 0, 17
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                    else:
                        if vestingStartTimestamp > block.timestamp:
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if -sub_c66bf7ce[address(msg.sender)].field_512 < ((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 'Claim amount too high!'
                            else:
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                        revert with 0, 17
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                        revert with 0, 'Claim amount too high!'
                                else:
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                                        revert with 0, 17
                                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                        revert with 0, 17
                                    if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                        revert with 0, 17
                                    if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                        revert with 0, 18
                                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                        revert with 0, 17
                                    if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                                        revert with 0, 17
                                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                        revert with 0, 17
                        else:
                            if stor7[stor8[address(msg.sender)].field_0].field_1280 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / stor7[stor8[address(msg.sender)].field_0].field_1280:
                                revert with 0, 17
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                    revert with 0, 'Claim amount too high!'
                            else:
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                        revert with 0, 17
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                        revert with 0, 'Claim amount too high!'
                                else:
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                        revert with 0, 17
                                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                        revert with 0, 17
                                    if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                        revert with 0, 17
                                    if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                        revert with 0, 18
                                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                        revert with 0, 17
                                    if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 > !((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18):
                                        revert with 0, 17
                                    if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) < sub_c66bf7ce[address(msg.sender)].field_512:
                                        revert with 0, 17
                                    if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) < (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                        revert with 0, 'Claim amount too high!'
                    if sub_c66bf7ce[msg.sender].field_512 > !(((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512):
                        revert with 0, 17
                    sub_c66bf7ce[msg.sender].field_512 = sub_c66bf7ce[msg.sender].field_512 + ((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit TokensClaimed(msg.sender, sub_c66bf7ce[msg.sender].field_0, ((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512);
        else:
            if stor7[stor8[address(msg.sender)].field_0].field_1280 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / stor7[stor8[address(msg.sender)].field_0].field_1280:
                revert with 0, 17
            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                revert with 0, 17
            if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                    revert with 0, 17
                if not uint8(stor0.field_168):
                    revert with 0, 'Vesting has not started!'
                if sub_4f4cd396:
                    if sub_4f4cd396 <= block.timestamp:
                        revert with 0, 'Vesting has been closed!'
                if uint8(stor0.field_160):
                    revert with 0, 'Pausable: paused'
                if sub_c66bf7ce[address(msg.sender)].field_0 >= stor7.length:
                    revert with 0, 50
                if not uint8(stor0.field_168):
                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                        if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                            revert with 0, 17
                        if -sub_c66bf7ce[address(msg.sender)].field_512 < (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512:
                            revert with 0, 'Claim amount too high!'
                    else:
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                            if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if sub_c66bf7ce[address(msg.sender)].field_256 < stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                revert with 0, 'Claim amount too high!'
                        else:
                            if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                                revert with 0, 17
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                revert with 0, 18
                            if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                revert with 0, 17
                            if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                                revert with 0, 17
                            if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                revert with 0, 'Claim amount too high!'
                else:
                    if vestingStartTimestamp > block.timestamp:
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if -sub_c66bf7ce[address(msg.sender)].field_512 < (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 'Claim amount too high!'
                        else:
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if sub_c66bf7ce[address(msg.sender)].field_256 < stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                    revert with 0, 'Claim amount too high!'
                            else:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                                    revert with 0, 17
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 18
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 17
                                if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                                    revert with 0, 17
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                    revert with 0, 'Claim amount too high!'
                    else:
                        if stor7[stor8[address(msg.sender)].field_0].field_1280 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / stor7[stor8[address(msg.sender)].field_0].field_1280:
                            revert with 0, 17
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                        else:
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if sub_c66bf7ce[address(msg.sender)].field_256 < stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                    revert with 0, 'Claim amount too high!'
                            else:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                    revert with 0, 17
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 18
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 17
                                if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 > !((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18):
                                    revert with 0, 17
                                if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if (sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18 < 0:
                                    revert with 0, 'Claim amount too high!'
                if sub_c66bf7ce[msg.sender].field_512 > !((stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512):
                    revert with 0, 17
                sub_c66bf7ce[msg.sender].field_512 = sub_c66bf7ce[msg.sender].field_512 + (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512
                require ext_code.size(vestingTokenAddress)
                call vestingTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TokensClaimed(msg.sender, sub_c66bf7ce[msg.sender].field_0, (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512);
            else:
                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                    revert with 0, 17
                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                    revert with 0, 17
                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                    if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                        revert with 0, 17
                    if not uint8(stor0.field_168):
                        revert with 0, 'Vesting has not started!'
                    if sub_4f4cd396:
                        if sub_4f4cd396 <= block.timestamp:
                            revert with 0, 'Vesting has been closed!'
                    if uint8(stor0.field_160):
                        revert with 0, 'Pausable: paused'
                    if sub_c66bf7ce[address(msg.sender)].field_0 >= stor7.length:
                        revert with 0, 50
                    if not uint8(stor0.field_168):
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if -sub_c66bf7ce[address(msg.sender)].field_512 < sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 'Claim amount too high!'
                        else:
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                            else:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                                    revert with 0, 17
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 18
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 17
                                if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                                    revert with 0, 17
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_256:
                                    revert with 0, 'Claim amount too high!'
                    else:
                        if vestingStartTimestamp > block.timestamp:
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if -sub_c66bf7ce[address(msg.sender)].field_512 < sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 'Claim amount too high!'
                            else:
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                        revert with 0, 17
                                else:
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                                        revert with 0, 17
                                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                        revert with 0, 17
                                    if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                        revert with 0, 17
                                    if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                        revert with 0, 18
                                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                        revert with 0, 17
                                    if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                                        revert with 0, 17
                                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                        revert with 0, 17
                                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_256:
                                        revert with 0, 'Claim amount too high!'
                        else:
                            if stor7[stor8[address(msg.sender)].field_0].field_1280 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / stor7[stor8[address(msg.sender)].field_0].field_1280:
                                revert with 0, 17
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_256:
                                    revert with 0, 'Claim amount too high!'
                            else:
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                        revert with 0, 17
                                else:
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                        revert with 0, 17
                                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                        revert with 0, 17
                                    if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                        revert with 0, 17
                                    if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                        revert with 0, 18
                                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                        revert with 0, 17
                                    if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 > !((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18):
                                        revert with 0, 17
                                    if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) < sub_c66bf7ce[address(msg.sender)].field_512:
                                        revert with 0, 17
                                    if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) < sub_c66bf7ce[address(msg.sender)].field_256:
                                        revert with 0, 'Claim amount too high!'
                    if sub_c66bf7ce[msg.sender].field_512 > !(sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512):
                        revert with 0, 17
                    sub_c66bf7ce[msg.sender].field_512 = sub_c66bf7ce[msg.sender].field_512 + sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit TokensClaimed(msg.sender, sub_c66bf7ce[msg.sender].field_0, sub_c66bf7ce[address(msg.sender)].field_256 - sub_c66bf7ce[address(msg.sender)].field_512);
                else:
                    if sub_c66bf7ce[address(msg.sender)].field_256 < stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                        revert with 0, 17
                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                        revert with 0, 17
                    if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                        revert with 0, 18
                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                        revert with 0, 17
                    if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 > !((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18):
                        revert with 0, 17
                    if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) < sub_c66bf7ce[address(msg.sender)].field_512:
                        revert with 0, 17
                    if not uint8(stor0.field_168):
                        revert with 0, 'Vesting has not started!'
                    if sub_4f4cd396:
                        if sub_4f4cd396 <= block.timestamp:
                            revert with 0, 'Vesting has been closed!'
                    if uint8(stor0.field_160):
                        revert with 0, 'Pausable: paused'
                    if sub_c66bf7ce[address(msg.sender)].field_0 >= stor7.length:
                        revert with 0, 50
                    if not uint8(stor0.field_168):
                        if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                            revert with 0, 17
                        if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                            if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 17
                            if -sub_c66bf7ce[address(msg.sender)].field_512 < (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512:
                                revert with 0, 'Claim amount too high!'
                        else:
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if sub_c66bf7ce[address(msg.sender)].field_256 < (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18):
                                    revert with 0, 'Claim amount too high!'
                            else:
                                if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                                    revert with 0, 17
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 18
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    revert with 0, 17
                                if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                                    revert with 0, 17
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18):
                                    revert with 0, 'Claim amount too high!'
                    else:
                        if vestingStartTimestamp > block.timestamp:
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                if 0 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if -sub_c66bf7ce[address(msg.sender)].field_512 < (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 'Claim amount too high!'
                            else:
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                        revert with 0, 17
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18):
                                        revert with 0, 'Claim amount too high!'
                                else:
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < 0:
                                        revert with 0, 17
                                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                        revert with 0, 17
                                    if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                        revert with 0, 17
                                    if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                        revert with 0, 18
                                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                        revert with 0, 17
                                    if 0 > !((10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18):
                                        revert with 0, 17
                                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                        revert with 0, 17
                                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18):
                                        revert with 0, 'Claim amount too high!'
                        else:
                            if stor7[stor8[address(msg.sender)].field_0].field_1280 and sub_c66bf7ce[address(msg.sender)].field_256 > -1 / stor7[stor8[address(msg.sender)].field_0].field_1280:
                                revert with 0, 17
                            if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                revert with 0, 17
                            if block.timestamp <= vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 < sub_c66bf7ce[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if 0 < (sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18:
                                    revert with 0, 'Claim amount too high!'
                            else:
                                if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                    revert with 0, 17
                                if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 >= stor7[stor8[address(msg.sender)].field_0].field_1024:
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < sub_c66bf7ce[address(msg.sender)].field_512:
                                        revert with 0, 17
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18):
                                        revert with 0, 'Claim amount too high!'
                                else:
                                    if sub_c66bf7ce[address(msg.sender)].field_256 < stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18:
                                        revert with 0, 17
                                    if vestingStartTimestamp > !stor7[stor8[address(msg.sender)].field_0].field_768:
                                        revert with 0, 17
                                    if block.timestamp < vestingStartTimestamp + stor7[stor8[address(msg.sender)].field_0].field_768:
                                        revert with 0, 17
                                    if block.timestamp - vestingStartTimestamp - stor7[stor8[address(msg.sender)].field_0].field_768 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not stor7[stor8[address(msg.sender)].field_0].field_1024:
                                        revert with 0, 18
                                    if (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024 and sub_c66bf7ce[address(msg.sender)].field_256 - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) > -1 / (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024:
                                        revert with 0, 17
                                    if stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 > !((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18):
                                        revert with 0, 17
                                    if (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) < sub_c66bf7ce[address(msg.sender)].field_512:
                                        revert with 0, 17
                    if sub_c66bf7ce[msg.sender].field_512 > !((stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512):
                        revert with 0, 17
                    sub_c66bf7ce[msg.sender].field_512 = sub_c66bf7ce[msg.sender].field_512 + (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit TokensClaimed(msg.sender, sub_c66bf7ce[msg.sender].field_0, (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18) + ((sub_c66bf7ce[address(msg.sender)].field_256 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) - (stor7[stor8[address(msg.sender)].field_0].field_1280 * sub_c66bf7ce[address(msg.sender)].field_256 / 10^18 * (10^18 * block.timestamp) - (10^18 * vestingStartTimestamp) - (10^18 * stor7[stor8[address(msg.sender)].field_0].field_768) / stor7[stor8[address(msg.sender)].field_0].field_1024) / 10^18) - sub_c66bf7ce[address(msg.sender)].field_512);
}



}
