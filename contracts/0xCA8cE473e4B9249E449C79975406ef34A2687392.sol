contract main {




// =====================  Runtime code  =====================


#
#  - sub_fe4b0d80(?)
#
address chainlinkTokenAddress;
mapping of address stor5;
address owner;
uint256 stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;
uint256 currentRandom;
uint256 timeInterval;
array of uint256 sub_3a9e95f1;
address stor18;
address sub_08fe7e7dAddress;
array of struct sub_9d52ede4;
uint256 stor21;
array of uint256 stor22;
mapping of address sub_ed4084e6;
mapping of uint256 sub_1279a95d;
mapping of uint8 sub_c3faae79;
array of uint256 stor93369884277498597659590946175997448338802118867485977633968544981113634346220;

function sub_08fe7e7d(?) payable {
    return sub_08fe7e7dAddress
}

function sub_1279a95d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1279a95d[arg1]
}

function getChainlinkToken() payable {
    return chainlinkTokenAddress
}

function sub_3a9e95f1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_3a9e95f1.length
    return sub_3a9e95f1[arg1]
}

function currentRandom() payable {
    return currentRandom
}

function owner() payable {
    return address(owner)
}

function timeInterval() payable {
    return timeInterval
}

function sub_9d52ede4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_9d52ede4.length
    return address(sub_9d52ede4[arg1].field_0)
}

function sub_c3faae79(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c3faae79[arg1]
}

function sub_ed4084e6(?) payable {
    require calldata.size - 4 >= 32
    return address(sub_ed4084e6[arg1])
}

function _fallback() payable {
    revert
}

function setTimeInterval(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    timeInterval = arg1
}

function setOracleAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    stor18 = arg1
}

function sub_8a161fc0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    stor8 = address(arg1)
}

function sub_f2d3944e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    stor9 = address(arg1)
}

function sub_3a4d2b08(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    stor13 = address(arg1)
}

function sub_422f169b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    stor10 = address(arg1)
}

function sub_6ff2c8c7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    stor11 = address(arg1)
}

function sub_af8f9042(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    stor12 = address(arg1)
}

function acceptOwnership() payable {
    if stor7 != msg.sender:
        revert with 0, 'Must be proposed owner'
    uint256(stor6) = msg.sender or Mask(96, 160, uint256(stor6))
    stor7 = 0
    emit OwnershipTransferred(address(owner), msg.sender);
}

function sub_a55d6936(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    sub_08fe7e7dAddress = address(arg1)
    stor14 = address(arg1)
}

function sub_0e86e30b(?) payable {
    require calldata.size - 4 >= 64
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Source must be the oracle of the request'
    stor5[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    emit 0x13bf25f0: arg1, arg2
    currentRandom = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    if msg.sender == arg1:
        revert with 0, 'Cannot transfer to self'
    stor7 = arg1
    emit OwnershipTransferRequested(address(owner), arg1);
}

function sub_deea64b8(?) payable {
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    idx = 0
    while idx < sub_9d52ede4.length:
        mem[0] = address(sub_9d52ede4[idx].field_0)
        mem[32] = 24
        sub_1279a95d[address(stor20[idx].field_0)] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function cancelRequest(bytes32 arg1, uint256 arg2, bytes4 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 == Mask(32, 224, arg3)
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    stor5[arg1] = 0
    emit ChainlinkCancelled(arg1);
    require ext_code.size(stor5[arg1])
    call stor5[arg1].cancelOracleRequest(bytes32 arg1, uint256 arg2, bytes4 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, Mask(32, 224, arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1084a7eb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if uint16(arg1) > !block.timestamp:
        revert with 0, 17
    sub_3a9e95f1.length++
    sub_3a9e95f1[sub_3a9e95f1.length] = sha3(uint16(arg1) + block.timestamp)
    uint256(sub_ed4084e6[uint16(arg1) + block.timestamp]) = msg.sender or Mask(96, 160, uint256(sub_ed4084e6[uint16(arg1) + block.timestamp]))
    if not sub_c3faae79[msg.sender]:
        sub_c3faae79[msg.sender] = 1
        sub_9d52ede4.length++
        storCE6D[stor20.length] = msg.sender or Mask(96, 160, storCE6D[stor20.length])
    emit 0x889802a4: sha3(uint16(arg1) + block.timestamp), msg.sender
}

function withdrawLink() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    staticcall chainlinkTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call chainlinkTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Unable to transfer'
}

function sub_4ef81bd0(?) payable {
    mem[64] = (32 * sub_9d52ede4.length) + 128
    mem[96] = sub_9d52ede4.length
    if not sub_9d52ede4.length:
        mem[(32 * sub_9d52ede4.length) + 128] = 32
        mem[(32 * sub_9d52ede4.length) + 160] = sub_9d52ede4.length
        idx = 0
        s = (32 * sub_9d52ede4.length) + 192
        t = 128
        while idx < sub_9d52ede4.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_9d52ede4.length) + 128
           len (96 * sub_9d52ede4.length) + 64
    mem[128] = address(sub_9d52ede4.field_0)
    idx = 128
    s = 0
    while (32 * sub_9d52ede4.length) + 96 > idx:
        mem[idx + 32] = address(sub_9d52ede4[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_9d52ede4.length) + 128] = 32
    mem[(32 * sub_9d52ede4.length) + 160] = sub_9d52ede4.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_9d52ede4.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_9d52ede4.length) + -mem[64] + 192
}

function sub_1b20eea4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    if bool(stor22.length):
        if bool(stor22.length) == uint255(stor22.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor22[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor22.length = 0
            idx = 0
            while (uint255(stor22.length) * 0.5) + 31 / 32 > idx:
                uint256(stor22[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor22.length) == stor22.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor22[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor22.length = 0
            idx = 0
            while stor22.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor22[idx].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_a5ac1a83(?) payable {
    staticcall stor14.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var33002 - var33001 >= 32
    if var37002 > var37001:
    mem[ceil32(return_data.size) + 100] = var39001
    staticcall stor14.0xc459f336 with:
            gas gas_remaining wei
           args var39001
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require var43002 - var43001 >= 32
    require mem[var45002] == mem[var45002 + 31 len 1]
    if uint8(var49001) != 1:
        if var53001 == -1:
            revert with 0, 17
        staticcall stor14.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var63002 - var63001 >= 32
        # nil
    else:
        staticcall stor14.0x7665377e with:
                gas gas_remaining wei
               args var51001
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var55002 - var55001 >= 32
        if var61001 > !timeInterval:
            revert with 0, 17
        # nil
}

function sub_d645df07(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] <= test266151307()
        require cd[4] + cd[idx] + 67 < calldata.size
        if cd[(cd[4] + cd[idx] + 36)] > test266151307():
            revert with 0, 65
        _22 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1
        mem[_22] = cd[(cd[4] + cd[idx] + 36)]
        require cd[4] + cd[idx] + cd[(cd[4] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_22 + 32 len cd[(cd[4] + cd[idx] + 36)]] = call.data[cd[4] + cd[idx] + 68 len cd[(cd[4] + cd[idx] + 36)]]
        mem[_22 + cd[(cd[4] + cd[idx] + 36)] + 32] = 0
        mem[s] = _22
        s = s + 32
        idx = idx + 32
        continue 
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    stor21 = mem[96]
    mem[0] = 21
    if not mem[96]:
        idx = 0
        while sha3(21) + stor21 > idx + sha3(mem[0]):
            if bool(stor[idx + sha3(mem[0])].field_0):
                if bool(stor[idx + sha3(mem[0])].field_0) == uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5 < 32:
                    revert with 0, 34
                uint256(stor[idx + sha3(mem[0])].field_0) = 0
                if 31 < uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + ((uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                    revert with 0, 34
                uint256(stor[idx + sha3(mem[0])].field_0) = 0
                if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            _36 = mem[idx]
            _37 = mem[mem[idx]]
            if bool(stor[s + sha3(mem[0])].field_0):
                if bool(stor[s + sha3(mem[0])].field_0) == uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = s + sha3(mem[0])
                if not _37:
                    uint256(stor[s + sha3(mem[0])].field_0) = 0
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + ((uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                else:
                    uint256(stor[s + sha3(mem[0])].field_0) = (2 * _37) + 1
                    u = sha3(s + sha3(mem[0]))
                    t = _36 + 32
                    while _36 + _37 + 32 > t:
                        uint256(stor[u].field_0) = mem[t]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _37 + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + ((uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
            else:
                if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = s + sha3(mem[0])
                if not _37:
                    uint256(stor[s + sha3(mem[0])].field_0) = 0
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                else:
                    uint256(stor[s + sha3(mem[0])].field_0) = (2 * _37) + 1
                    u = sha3(s + sha3(mem[0]))
                    t = _36 + 32
                    while _36 + _37 + 32 > t:
                        uint256(stor[u].field_0) = mem[t]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _37 + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
            s = s + 1
            idx = idx + 32
            continue 
        idx = s
        while sha3(21) + stor21 > idx:
            if bool(stor[idx].field_0):
                if bool(stor[idx].field_0) == uint255(uint256(stor[idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                uint256(stor[idx].field_0) = 0
                if 31 < uint255(uint256(stor[idx].field_0)) * 0.5:
                    mem[0] = idx
                    s = sha3(idx)
                    while sha3(idx) + ((uint255(uint256(stor[idx].field_0)) * 0.5) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                    revert with 0, 34
                uint256(stor[idx].field_0) = 0
                if 31 < stor[idx].field_1 % 128:
                    mem[0] = idx
                    s = sha3(idx)
                    while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
}



}
