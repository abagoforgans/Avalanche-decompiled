contract main {




// =====================  Runtime code  =====================


#
#  - uri(uint256 arg1)
#
mapping of uint8 stor0;
address owner;
mapping of uint8 stor2;
array of struct stor3;
mapping of struct stor4;
array of struct stor5;
mapping of uint256 balanceOf;
mapping of uint8 stor7;
mapping of address creators;
array of struct fees;
array of struct stor10;
array of struct stor11;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return balanceOf[arg2][address(arg1)]
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function fees(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < fees[arg1].field_0
    return fees[arg1][arg2].field_0, fees[arg1][arg2].field_256
}

function isSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor2[address(arg1)])
}

function owner() payable {
    return owner
}

function creators(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return creators[arg1]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor7[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renounceSigner() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor2[address(msg.sender)] = 0
    emit SignerRemoved(msg.sender);
}

function addSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor2[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor2[address(arg1)] = 1
    emit SignerAdded(arg1);
}

function removeSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor2[address(arg1)] = 0
    emit SignerRemoved(arg1);
}

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if arg1 != msg.sender:
        if bool(stor7[address(arg1)][msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need operator approval for 3rd party burns.'
    if arg3 > balanceOf[arg2][address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[arg2][address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
}

function setContractURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor5[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while (uint255(stor5.length) * 0.5) + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor5[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setTokenURIPrefix(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor3[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3.length = 0
            idx = 0
            while (uint255(stor3.length) * 0.5) + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor3[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3.length = 0
            idx = 0
            while stor3.length.field_1 + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg2.length == arg1.length
    if arg1.length > test266151307():
        revert with 0, 65
    if arg1.length:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 0, 50
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = sha3(cd[((32 * idx) + arg2 + 36)], 6)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = balanceOf[cd[((32 * idx) + arg2 + 36)]][address(cd[((32 * idx) + arg1 + 36)])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[128 len 32 * arg1.length])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, '_to must be non-zero.'
    if arg1 != msg.sender:
        if bool(stor7[address(arg1)][msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need operator approval for 3rd party transfers.'
    if arg4 > balanceOf[arg3][address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 17
    balanceOf[arg3][address(arg1)] -= arg4
    if arg4 > !balanceOf[arg3][arg2]:
        revert with 0, 17
    if arg4 + balanceOf[arg3][arg2] < arg4:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if not ext_code.size(arg2):
    require ext_code.size(arg2)
    call arg2 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'contract returned an unknown value from onERC1155Received'
}

function getFeeBps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 9
    mem[64] = (32 * fees[arg1].field_0) + 128
    mem[96] = fees[arg1].field_0
    s = 128
    idx = 0
    while idx < fees[arg1].field_0:
        mem[0] = sha3(arg1, 9)
        _27 = mem[64]
        mem[64] = mem[64] + 64
        mem[_27] = fees[arg1][idx].field_0
        mem[_27 + 32] = fees[arg1][idx].field_256
        mem[s] = _27
        s = s + 32
        idx = idx + 1
        continue 
    _25 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _28 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _25) + 32
    if not _25:
        _47 = mem[96]
        idx = 0
        while idx < _47:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_28]:
                revert with 0, 50
            mem[(32 * idx) + _28 + 32] = mem[mem[(32 * idx) + 128] + 32]
            if idx == -1:
                revert with 0, 17
            _47 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _59 = mem[_28]
        mem[mem[64] + 32] = mem[_28]
        mem[mem[64] + 64 len 32 * _59] = mem[_28 + 32 len 32 * _59]
        var19001 = _59
        return 32, mem[mem[64] + 32 len (32 * _59) + 32]
    mem[_28 + 32 len 32 * _25] = call.data[calldata.size len 32 * _25]
    _48 = mem[96]
    idx = 0
    while idx < _48:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[_28]:
            revert with 0, 50
        mem[(32 * idx) + _28 + 32] = mem[mem[(32 * idx) + 128] + 32]
        if idx == -1:
            revert with 0, 17
        _48 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _60 = mem[_28]
    mem[mem[64] + 32] = mem[_28]
    mem[mem[64] + 64 len 32 * _60] = mem[_28 + 32 len 32 * _60]
    return 32, mem[mem[64] + 32 len (32 * _60) + 32]
}

function getFeeRecipients(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 9
    mem[64] = (32 * fees[arg1].field_0) + 128
    mem[96] = fees[arg1].field_0
    s = 128
    idx = 0
    while idx < fees[arg1].field_0:
        mem[0] = sha3(arg1, 9)
        _27 = mem[64]
        mem[64] = mem[64] + 64
        mem[_27] = fees[arg1][idx].field_0
        mem[_27 + 32] = fees[arg1][idx].field_256
        mem[s] = _27
        s = s + 32
        idx = idx + 1
        continue 
    _25 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _28 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _25) + 32
    if not _25:
        _47 = mem[96]
        idx = 0
        while idx < _47:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_28]:
                revert with 0, 50
            mem[(32 * idx) + _28 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
            if idx == -1:
                revert with 0, 17
            _47 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _59 = mem[_28]
        mem[mem[64] + 32] = mem[_28]
        s = 0
        s = mem[64] + 64
        t = _28 + 32
        while _47 < _59:
            mem[s] = mem[t + 12 len 20]
            s = _47 + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[_28 + 32 len 32 * _25] = call.data[calldata.size len 32 * _25]
        _48 = mem[96]
        idx = 0
        while idx < _48:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_28]:
                revert with 0, 50
            mem[(32 * idx) + _28 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
            if idx == -1:
                revert with 0, 17
            _48 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _60 = mem[_28]
        mem[mem[64] + 32] = mem[_28]
        s = 0
        s = mem[64] + 64
        t = _28 + 32
        while _48 < _60:
            mem[s] = mem[t + 12 len 20]
            s = _48 + 1
            s = s + 32
            t = t + 32
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function contractURI() payable {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function tokenURIPrefix() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function name() payable {
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor10.length):
                if 31 < uint255(stor10.length) * 0.5:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor10.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)])
                mem[128] = 256 * stor10.length.field_8
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 0, 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)])
                mem[128] = 256 * stor10.length.field_8
        mem[ceil32(uint255(stor10.length) * 0.5) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
        if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)], mem[(2 * ceil32(uint255(stor10.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor10.length) * 0.5)]), 
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 0, 34
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10.length):
            if 31 < uint255(stor10.length) * 0.5:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while (uint255(stor10.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 0, 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
    if ceil32(stor10.length.field_1) > stor10.length.field_1:
        mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
    return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
}

function symbol() payable {
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor11.length):
                if 31 < uint255(stor11.length) * 0.5:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor11.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length), data=mem[128 len ceil32(uint255(stor11.length) * 0.5)])
                mem[128] = 256 * stor11.length.field_8
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 0, 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length), data=mem[128 len ceil32(uint255(stor11.length) * 0.5)])
                mem[128] = 256 * stor11.length.field_8
        mem[ceil32(uint255(stor11.length) * 0.5) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
        if ceil32(uint255(stor11.length) * 0.5) > uint255(stor11.length) * 0.5:
            mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11.length), data=mem[128 len ceil32(uint255(stor11.length) * 0.5)], mem[(2 * ceil32(uint255(stor11.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor11.length) * 0.5)]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 0, 34
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor11.length):
            if 31 < uint255(stor11.length) * 0.5:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while (uint255(stor11.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 0, 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) > stor11.length.field_1:
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'destination address must be non-zero.'
    if arg4.length != arg3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_ids and _values array lenght must match.'
    if arg1 != msg.sender:
        if bool(stor7[address(arg1)][msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need operator approval for 3rd party transfers.'
    idx = 0
    while idx < arg3.length:
        if idx >= arg4.length:
            revert with 0, 50
        if cd[((32 * idx) + arg4 + 36)] > balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg1)] < cd[((32 * idx) + arg4 + 36)]:
            revert with 0, 17
        balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg1)] -= cd[((32 * idx) + arg4 + 36)]
        if cd[((32 * idx) + arg4 + 36)] > !balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg2)]:
            revert with 0, 17
        if cd[((32 * idx) + arg4 + 36)] + balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg2)] < cd[((32 * idx) + arg4 + 36)]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg2
        mem[32] = sha3(cd[((32 * idx) + arg3 + 36)], 6)
        balanceOf[cd[((32 * idx) + arg3 + 36)]][address(arg2)] += cd[((32 * idx) + arg4 + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(32 * arg3.length) + 192] = arg4.length
    require arg4.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + 224] = 0
    emit TransferBatch(Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length], arg4.length, call.data[arg4 + 36 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
    if not ext_code.size(arg2):
    mem[(32 * arg4.length) + (32 * arg3.length) + 192 len arg5.length] = arg5[all]
    mem[(32 * arg4.length) + (32 * arg3.length) + arg5.length + 192] = 0
    mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + 196] = msg.sender
    mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + 228] = arg1
    mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + 260] = 160
    mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + 356] = arg3.length
    mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + 388 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + 292] = (96 * arg3.length) + 192
    mem[(32 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 388] = arg4.length
    mem[(32 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 420 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + 324] = (96 * arg3.length) + (32 * arg4.length) + 224
    mem[(64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 420] = arg5.length
    mem[(64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 452 len ceil32(arg5.length)] = arg5[all], mem[(32 * arg4.length) + (32 * arg3.length) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]
    if ceil32(arg5.length) > arg5.length:
        mem[(64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + arg5.length + 452] = 0
    require ext_code.size(arg2)
    call arg2 with:
         gas gas_remaining wei
        args mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + 196 len ceil32(arg5.length) + (96 * arg4.length) + (96 * arg3.length) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'contract returned an unknown value from onERC1155BatchReceived'
}

function mint(uint256 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4, address arg5, uint256[] arg6, uint256 arg7, string arg8) payable {
    require calldata.size - 4 >= 224
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg5.length) + 97 < 96 or ceil32(32 * arg5.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg5.length) + 97
    mem[96] = arg5.length
    require arg5 + (64 * arg5.length) + 36 <= calldata.size
    idx = 0
    s = arg5 + 36
    t = 128
    while idx < arg5.length:
        require calldata.size - s >= 64
        _714 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_714] = cd[s]
        mem[_714 + 32] = cd[(s + 32)]
        mem[t] = _714
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    if arg7.length > test266151307():
        revert with 0, 65
    _715 = mem[64]
    if mem[64] + ceil32(ceil32(arg7.length)) + 1 < mem[64] or mem[64] + ceil32(ceil32(arg7.length)) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(arg7.length)) + 1
    mem[_715] = arg7.length
    require arg7 + arg7.length + 36 <= calldata.size
    mem[_715 + 32 len arg7.length] = arg7[all]
    mem[_715 + arg7.length + 32] = 0
    _716 = mem[64]
    mem[mem[64] + 32] = address(this.address)
    mem[mem[64] + 52] = arg1
    _717 = mem[64]
    mem[mem[64]] = 52
    mem[64] = mem[64] + 84
    _719 = sha3(mem[_717 + 32 len mem[_717]])
    mem[_716 + 116] = '\x19Ethereum Signed Message:\n32'
    mem[_716 + 144] = _719
    mem[_716 + 84] = 60
    mem[_716 + 208] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _719)
    mem[_716 + 240] = arg2
    mem[_716 + 272] = arg3
    mem[_716 + 304] = arg4
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _719), arg2 << 248, arg3, arg4) 
    mem[_716 + 176] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Roles: account is the zero address'
    if not stor2[address(signer)]:
        revert with 0, 'signer should sign tokenId'
    if creators[arg1]:
        revert with 0, 'Token is already minted'
    if not arg6:
        revert with 0, 'Supply  be positive'
    if arg7.length <= 0:
        revert with 0, 'uri  be set'
    mem[0] = arg1
    mem[32] = 8
    creators[arg1] = msg.sender
    _737 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    mem[_716 + 208] = mem[96]
    if mem[96]:
        mem[_716 + 240 len 32 * mem[96]] = call.data[calldata.size len 32 * mem[96]]
        if mem[96] > test266151307():
            revert with 0, 65
        mem[_716 + (32 * mem[96]) + 240] = mem[96]
        mem[64] = _716 + (64 * mem[96]) + 272
        if not mem[96]:
            idx = 0
            while idx < mem[96]:
                if idx >= mem[96]:
                    revert with 0, 50
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient  be present'
                if idx >= mem[96]:
                    revert with 0, 50
                if 0 == mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value  be positive'
                mem[32] = 9
                if idx >= mem[96]:
                    revert with 0, 50
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 9)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_716 + 208]:
                    revert with 0, 50
                mem[(32 * idx) + _716 + 240] = mem[mem[(32 * idx) + 128] + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_716 + (32 * mem[96]) + 240]:
                    revert with 0, 50
                mem[(32 * idx) + _716 + (32 * mem[96]) + 272] = mem[mem[(32 * idx) + 128] + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not mem[96]:
                balanceOf[arg1][address(msg.sender)] = arg6
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token  exist'
                mem[0] = arg1
                mem[32] = 4
                _1487 = mem[_715]
                if stor4[arg1].field_0:
                    if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(arg1, 4)
                    if _1487:
                        stor4[arg1][].field_0 = Array(len=_1487, data=mem[_715 + 32 len _1487])
                        mem[_716 + (64 * mem[96]) + 304] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[_716 + (64 * mem[96]) + 272] = 32
                        _2764 = mem[_715]
                        mem[_716 + (64 * mem[96]) + 304] = mem[_715]
                        mem[_716 + (64 * mem[96]) + 336 len ceil32(_2764)] = mem[_715 + 32 len ceil32(_2764)]
                        var71001 = ceil32(_2764)
                        if ceil32(_2764) > _2764:
                            mem[_716 + (64 * mem[96]) + _2764 + 336] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[_716 + (64 * mem[96]) + 304 len ceil32(_2764) + 32],
                                 arg1,
                    else:
                        stor4[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor4[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor4[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[_716 + (64 * mem[96]) + 304] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[_716 + (64 * mem[96]) + 272] = 32
                        _2220 = mem[_715]
                        mem[_716 + (64 * mem[96]) + 304] = mem[_715]
                        mem[_716 + (64 * mem[96]) + 336 len ceil32(_2220)] = mem[_715 + 32 len ceil32(_2220)]
                        if ceil32(_2220) > _2220:
                            mem[_716 + (64 * mem[96]) + _2220 + 336] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[_716 + (64 * mem[96]) + 304 len ceil32(_2220) + 32],
                                 arg1,
                else:
                    if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                        revert with 0, 34
                    mem[0] = sha3(arg1, 4)
                    if _1487:
                        stor4[arg1][].field_0 = Array(len=_1487, data=mem[_715 + 32 len _1487])
                        mem[_716 + (64 * mem[96]) + 304] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[_716 + (64 * mem[96]) + 272] = 32
                        _2765 = mem[_715]
                        mem[_716 + (64 * mem[96]) + 304] = mem[_715]
                        mem[_716 + (64 * mem[96]) + 336 len ceil32(_2765)] = mem[_715 + 32 len ceil32(_2765)]
                        var72001 = ceil32(_2765)
                        if ceil32(_2765) > _2765:
                            mem[_716 + (64 * mem[96]) + _2765 + 336] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[_716 + (64 * mem[96]) + 304 len ceil32(_2765) + 32],
                                 arg1,
                    else:
                        stor4[arg1].field_0 = 0
                        idx = 0
                        while stor4[arg1].field_1 + 31 / 32 > idx:
                            stor4[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[_716 + (64 * mem[96]) + 304] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[_716 + (64 * mem[96]) + 272] = 32
                        _2223 = mem[_715]
                        mem[_716 + (64 * mem[96]) + 304] = mem[_715]
                        mem[_716 + (64 * mem[96]) + 336 len ceil32(_2223)] = mem[_715 + 32 len ceil32(_2223)]
                        var68001 = ceil32(_2223)
                        if ceil32(_2223) > _2223:
                            mem[_716 + (64 * mem[96]) + _2223 + 336] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[_716 + (64 * mem[96]) + 304 len ceil32(_2223) + 32],
                                 arg1,
            else:
                _1450 = _716 + (64 * mem[96]) + 272
                mem[_716 + (64 * mem[96]) + 272] = arg1
                mem[_716 + (64 * mem[96]) + 304] = 96
                _1467 = mem[_716 + 208]
                mem[_716 + (64 * mem[96]) + 368] = mem[_716 + 208]
                idx = 0
                s = mem[64] + 128
                t = _716 + 240
                while idx < _1467:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * _1467) + 128
                _2120 = mem[_716 + (32 * _737) + 240]
                mem[_1450 + (32 * _1467) + 128] = mem[_716 + (32 * _737) + 240]
                mem[_1450 + (32 * _1467) + 160 len 32 * _2120] = mem[_716 + (32 * _737) + 272 len 32 * _2120]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _1450 + (32 * _1467) + (32 * _2120) + -mem[64] + 160],
                balanceOf[arg1][address(msg.sender)] = arg6
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token  exist'
                mem[0] = arg1
                mem[32] = 4
                _2753 = mem[_715]
                if stor4[arg1].field_0:
                    if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(arg1, 4)
                    if _2753:
                        stor4[arg1][].field_0 = Array(len=_2753, data=mem[_715 + 32 len _2753])
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[mem[64]] = 32
                        _3398 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_3398)] = mem[_715 + 32 len ceil32(_3398)]
                        if ceil32(_3398) > _3398:
                            mem[mem[64] + _3398 + 64] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[mem[64] + 32 len ceil32(_3398) + 32],
                                 arg1,
                    else:
                        stor4[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor4[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor4[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[mem[64]] = 32
                        _3160 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_3160)] = mem[_715 + 32 len ceil32(_3160)]
                        if ceil32(_3160) > _3160:
                            mem[mem[64] + _3160 + 64] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[mem[64] + 32 len ceil32(_3160) + 32],
                                 arg1,
                else:
                    if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                        revert with 0, 34
                    mem[0] = sha3(arg1, 4)
                    if _2753:
                        stor4[arg1][].field_0 = Array(len=_2753, data=mem[_715 + 32 len _2753])
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        _3379 = mem[64]
                        mem[mem[64]] = 32
                        _3399 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_3399)] = mem[_715 + 32 len ceil32(_3399)]
                        if ceil32(_3399) <= _3399:
                            emit URI(string rg1, uint256 rg2):
                                     32,
                                     mem[mem[64] + 32 len ceil32(_3399) + 32],
                                     arg1,
                        else:
                            mem[mem[64] + _3399 + 64] = 0
                            emit URI(mem[mem[64] len ceil32(_3399) + _3379 + -mem[64] + 64], arg1);
                    else:
                        stor4[arg1].field_0 = 0
                        idx = 0
                        while stor4[arg1].field_1 + 31 / 32 > idx:
                            stor4[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[mem[64]] = 32
                        _3163 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_3163)] = mem[_715 + 32 len ceil32(_3163)]
                        if ceil32(_3163) > _3163:
                            mem[mem[64] + _3163 + 64] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[mem[64] + 32 len ceil32(_3163) + 32],
                                 arg1,
        else:
            mem[_716 + (32 * mem[96]) + 272 len 32 * mem[96]] = call.data[calldata.size len 32 * mem[96]]
            idx = 0
            while idx < mem[96]:
                if idx >= mem[96]:
                    revert with 0, 50
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient  be present'
                if idx >= mem[96]:
                    revert with 0, 50
                if 0 == mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value  be positive'
                mem[32] = 9
                if idx >= mem[96]:
                    revert with 0, 50
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 9)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_716 + 208]:
                    revert with 0, 50
                mem[(32 * idx) + _716 + 240] = mem[mem[(32 * idx) + 128] + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_716 + (32 * mem[96]) + 240]:
                    revert with 0, 50
                mem[(32 * idx) + _716 + (32 * mem[96]) + 272] = mem[mem[(32 * idx) + 128] + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not mem[96]:
                balanceOf[arg1][address(msg.sender)] = arg6
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token  exist'
                mem[0] = arg1
                mem[32] = 4
                _1493 = mem[_715]
                if stor4[arg1].field_0:
                    if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(arg1, 4)
                    if _1493:
                        stor4[arg1][].field_0 = Array(len=_1493, data=mem[_715 + 32 len _1493])
                        mem[_716 + (64 * mem[96]) + 304] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[_716 + (64 * mem[96]) + 272] = 32
                        _2767 = mem[_715]
                        mem[_716 + (64 * mem[96]) + 304] = mem[_715]
                        mem[_716 + (64 * mem[96]) + 336 len ceil32(_2767)] = mem[_715 + 32 len ceil32(_2767)]
                        var72001 = ceil32(_2767)
                        if ceil32(_2767) > _2767:
                            mem[_716 + (64 * mem[96]) + _2767 + 336] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[_716 + (64 * mem[96]) + 304 len ceil32(_2767) + 32],
                                 arg1,
                    else:
                        stor4[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor4[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor4[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[_716 + (64 * mem[96]) + 304] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[_716 + (64 * mem[96]) + 272] = 32
                        _2228 = mem[_715]
                        mem[_716 + (64 * mem[96]) + 304] = mem[_715]
                        mem[_716 + (64 * mem[96]) + 336 len ceil32(_2228)] = mem[_715 + 32 len ceil32(_2228)]
                        var68001 = ceil32(_2228)
                        if ceil32(_2228) > _2228:
                            mem[_716 + (64 * mem[96]) + _2228 + 336] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[_716 + (64 * mem[96]) + 304 len ceil32(_2228) + 32],
                                 arg1,
                else:
                    if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                        revert with 0, 34
                    mem[0] = sha3(arg1, 4)
                    if _1493:
                        stor4[arg1][].field_0 = Array(len=_1493, data=mem[_715 + 32 len _1493])
                        mem[_716 + (64 * mem[96]) + 304] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[_716 + (64 * mem[96]) + 272] = 32
                        _2768 = mem[_715]
                        mem[_716 + (64 * mem[96]) + 304] = mem[_715]
                        mem[_716 + (64 * mem[96]) + 336 len ceil32(_2768)] = mem[_715 + 32 len ceil32(_2768)]
                        var73001 = ceil32(_2768)
                        if ceil32(_2768) > _2768:
                            mem[_716 + (64 * mem[96]) + _2768 + 336] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[_716 + (64 * mem[96]) + 304 len ceil32(_2768) + 32],
                                 arg1,
                    else:
                        stor4[arg1].field_0 = 0
                        idx = 0
                        while stor4[arg1].field_1 + 31 / 32 > idx:
                            stor4[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[_716 + (64 * mem[96]) + 304] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[_716 + (64 * mem[96]) + 272] = 32
                        _2231 = mem[_715]
                        mem[_716 + (64 * mem[96]) + 304] = mem[_715]
                        mem[_716 + (64 * mem[96]) + 336 len ceil32(_2231)] = mem[_715 + 32 len ceil32(_2231)]
                        var69001 = ceil32(_2231)
                        if ceil32(_2231) > _2231:
                            mem[_716 + (64 * mem[96]) + _2231 + 336] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[_716 + (64 * mem[96]) + 304 len ceil32(_2231) + 32],
                                 arg1,
            else:
                _1455 = _716 + (64 * mem[96]) + 272
                mem[_716 + (64 * mem[96]) + 272] = arg1
                mem[_716 + (64 * mem[96]) + 304] = 96
                _1471 = mem[_716 + 208]
                mem[_716 + (64 * mem[96]) + 368] = mem[_716 + 208]
                idx = 0
                s = mem[64] + 128
                t = _716 + 240
                while idx < _1471:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * _1471) + 128
                _2121 = mem[_716 + (32 * _737) + 240]
                mem[_1455 + (32 * _1471) + 128] = mem[_716 + (32 * _737) + 240]
                mem[_1455 + (32 * _1471) + 160 len 32 * _2121] = mem[_716 + (32 * _737) + 272 len 32 * _2121]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _1455 + (32 * _1471) + (32 * _2121) + -mem[64] + 160],
                balanceOf[arg1][address(msg.sender)] = arg6
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token  exist'
                mem[0] = arg1
                mem[32] = 4
                _2756 = mem[_715]
                if stor4[arg1].field_0:
                    if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(arg1, 4)
                    if _2756:
                        stor4[arg1][].field_0 = Array(len=_2756, data=mem[_715 + 32 len _2756])
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[mem[64]] = 32
                        _3400 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_3400)] = mem[_715 + 32 len ceil32(_3400)]
                        if ceil32(_3400) > _3400:
                            mem[mem[64] + _3400 + 64] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[mem[64] + 32 len ceil32(_3400) + 32],
                                 arg1,
                    else:
                        stor4[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor4[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor4[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[mem[64]] = 32
                        _3166 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_3166)] = mem[_715 + 32 len ceil32(_3166)]
                        if ceil32(_3166) > _3166:
                            mem[mem[64] + _3166 + 64] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[mem[64] + 32 len ceil32(_3166) + 32],
                                 arg1,
                else:
                    if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                        revert with 0, 34
                    mem[0] = sha3(arg1, 4)
                    if _2756:
                        stor4[arg1][].field_0 = Array(len=_2756, data=mem[_715 + 32 len _2756])
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        _3391 = mem[64]
                        mem[mem[64]] = 32
                        _3401 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_3401)] = mem[_715 + 32 len ceil32(_3401)]
                        if ceil32(_3401) <= _3401:
                            emit URI(string rg1, uint256 rg2):
                                     32,
                                     mem[mem[64] + 32 len ceil32(_3401) + 32],
                                     arg1,
                        else:
                            mem[mem[64] + _3401 + 64] = 0
                            emit URI(mem[mem[64] len ceil32(_3401) + _3391 + -mem[64] + 64], arg1);
                    else:
                        stor4[arg1].field_0 = 0
                        idx = 0
                        while stor4[arg1].field_1 + 31 / 32 > idx:
                            stor4[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[mem[64]] = 32
                        _3169 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_3169)] = mem[_715 + 32 len ceil32(_3169)]
                        if ceil32(_3169) > _3169:
                            mem[mem[64] + _3169 + 64] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[mem[64] + 32 len ceil32(_3169) + 32],
                                 arg1,
    else:
        if mem[96] > test266151307():
            revert with 0, 65
        _743 = _716 + (32 * mem[96]) + 240
        mem[_716 + (32 * mem[96]) + 240] = mem[96]
        mem[64] = _716 + (64 * mem[96]) + 272
        if not mem[96]:
            _1426 = mem[96]
            idx = 0
            while idx < _1426:
                if idx >= mem[96]:
                    revert with 0, 50
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient  be present'
                if idx >= mem[96]:
                    revert with 0, 50
                if 0 == mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value  be positive'
                mem[32] = 9
                if idx >= mem[96]:
                    revert with 0, 50
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 9)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_716 + 208]:
                    revert with 0, 50
                mem[(32 * idx) + _716 + 240] = mem[mem[(32 * idx) + 128] + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_743]:
                    revert with 0, 50
                mem[(32 * idx) + _743 + 32] = mem[mem[(32 * idx) + 128] + 32]
                if idx == -1:
                    revert with 0, 17
                _1426 = mem[96]
                idx = idx + 1
                continue 
            if not mem[96]:
                balanceOf[arg1][address(msg.sender)] = arg6
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token  exist'
                mem[0] = arg1
                mem[32] = 4
                _1475 = mem[_715]
                if not stor4[arg1].field_0:
                    if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                        revert with 0, 34
                    mem[0] = sha3(arg1, 4)
                    if _1475:
                        stor4[arg1][].field_0 = Array(len=_1475, data=mem[_715 + 32 len _1475])
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[mem[64]] = 32
                        _2759 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_2759)] = mem[_715 + 32 len ceil32(_2759)]
                        var71001 = ceil32(_2759)
                        if ceil32(_2759) > _2759:
                            mem[mem[64] + _2759 + 64] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[mem[64] + 32 len ceil32(_2759) + 32],
                                 arg1,
                    else:
                        stor4[arg1].field_0 = 0
                        idx = 0
                        while stor4[arg1].field_1 + 31 / 32 > idx:
                            stor4[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[mem[64]] = 32
                        _2207 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_2207)] = mem[_715 + 32 len ceil32(_2207)]
                        if ceil32(_2207) > _2207:
                            mem[mem[64] + _2207 + 64] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[mem[64] + 32 len ceil32(_2207) + 32],
                                 arg1,
                else:
                    if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(arg1, 4)
                    if _1475:
                        stor4[arg1][].field_0 = Array(len=_1475, data=mem[_715 + 32 len _1475])
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[mem[64]] = 32
                        _2758 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_2758)] = mem[_715 + 32 len ceil32(_2758)]
                        var70001 = ceil32(_2758)
                        if ceil32(_2758) > _2758:
                            mem[mem[64] + _2758 + 64] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[mem[64] + 32 len ceil32(_2758) + 32],
                                 arg1,
                    else:
                        stor4[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor4[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor4[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        _2134 = mem[64]
                        mem[mem[64]] = 32
                        _2204 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_2204)] = mem[_715 + 32 len ceil32(_2204)]
                        if ceil32(_2204) <= _2204:
                            emit URI(string rg1, uint256 rg2):
                                     32,
                                     mem[mem[64] + 32 len ceil32(_2204) + 32],
                                     arg1,
                        else:
                            mem[mem[64] + _2204 + 64] = 0
                            emit URI(mem[mem[64] len ceil32(_2204) + _2134 + -mem[64] + 64], arg1);
            else:
                _1440 = mem[64]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = 96
                _1459 = mem[_716 + 208]
                mem[mem[64] + 96] = mem[_716 + 208]
                idx = 0
                s = mem[64] + 128
                t = _716 + 240
                while idx < _1459:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1440 + 64] = (32 * _1459) + 128
                _2118 = mem[_743]
                mem[_1440 + (32 * _1459) + 128] = mem[_743]
                mem[_1440 + (32 * _1459) + 160 len 32 * _2118] = mem[_743 + 32 len 32 * _2118]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _1440 + (32 * _1459) + (32 * _2118) + -mem[64] + 160],
                balanceOf[arg1][address(msg.sender)] = arg6
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token  exist'
                mem[0] = arg1
                mem[32] = 4
                _2747 = mem[_715]
                if not stor4[arg1].field_0:
                    if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                        revert with 0, 34
                    mem[0] = sha3(arg1, 4)
                    if _2747:
                        stor4[arg1][].field_0 = Array(len=_2747, data=mem[_715 + 32 len _2747])
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        _3355 = mem[64]
                        mem[mem[64]] = 32
                        _3395 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_3395)] = mem[_715 + 32 len ceil32(_3395)]
                        if ceil32(_3395) <= _3395:
                            emit URI(string rg1, uint256 rg2):
                                     32,
                                     mem[mem[64] + 32 len ceil32(_3395) + 32],
                                     arg1,
                        else:
                            mem[mem[64] + _3395 + 64] = 0
                            emit URI(mem[mem[64] len ceil32(_3395) + _3355 + -mem[64] + 64], arg1);
                    else:
                        stor4[arg1].field_0 = 0
                        idx = 0
                        while stor4[arg1].field_1 + 31 / 32 > idx:
                            stor4[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[mem[64]] = 32
                        _3151 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_3151)] = mem[_715 + 32 len ceil32(_3151)]
                        if ceil32(_3151) > _3151:
                            mem[mem[64] + _3151 + 64] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[mem[64] + 32 len ceil32(_3151) + 32],
                                 arg1,
                else:
                    if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(arg1, 4)
                    if _2747:
                        stor4[arg1][].field_0 = Array(len=_2747, data=mem[_715 + 32 len _2747])
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[mem[64]] = 32
                        _3394 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_3394)] = mem[_715 + 32 len ceil32(_3394)]
                        if ceil32(_3394) > _3394:
                            mem[mem[64] + _3394 + 64] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[mem[64] + 32 len ceil32(_3394) + 32],
                                 arg1,
                    else:
                        stor4[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor4[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor4[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        _3076 = mem[64]
                        mem[mem[64]] = 32
                        _3148 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_3148)] = mem[_715 + 32 len ceil32(_3148)]
                        if ceil32(_3148) <= _3148:
                            emit URI(string rg1, uint256 rg2):
                                     32,
                                     mem[mem[64] + 32 len ceil32(_3148) + 32],
                                     arg1,
                        else:
                            mem[mem[64] + _3148 + 64] = 0
                            emit URI(mem[mem[64] len ceil32(_3148) + _3076 + -mem[64] + 64], arg1);
        else:
            mem[_716 + (32 * mem[96]) + 272 len 32 * mem[96]] = call.data[calldata.size len 32 * mem[96]]
            _1427 = mem[96]
            idx = 0
            while idx < _1427:
                if idx >= mem[96]:
                    revert with 0, 50
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient  be present'
                if idx >= mem[96]:
                    revert with 0, 50
                if 0 == mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value  be positive'
                mem[32] = 9
                if idx >= mem[96]:
                    revert with 0, 50
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 9)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_716 + 208]:
                    revert with 0, 50
                mem[(32 * idx) + _716 + 240] = mem[mem[(32 * idx) + 128] + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[_743]:
                    revert with 0, 50
                mem[(32 * idx) + _743 + 32] = mem[mem[(32 * idx) + 128] + 32]
                if idx == -1:
                    revert with 0, 17
                _1427 = mem[96]
                idx = idx + 1
                continue 
            if not mem[96]:
                balanceOf[arg1][address(msg.sender)] = arg6
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token  exist'
                mem[0] = arg1
                mem[32] = 4
                _1481 = mem[_715]
                if stor4[arg1].field_0:
                    if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(arg1, 4)
                    if _1481:
                        stor4[arg1][].field_0 = Array(len=_1481, data=mem[_715 + 32 len _1481])
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[mem[64]] = 32
                        _2761 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_2761)] = mem[_715 + 32 len ceil32(_2761)]
                        var71001 = ceil32(_2761)
                        if ceil32(_2761) > _2761:
                            mem[mem[64] + _2761 + 64] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[mem[64] + 32 len ceil32(_2761) + 32],
                                 arg1,
                    else:
                        stor4[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor4[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor4[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[mem[64]] = 32
                        _2212 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_2212)] = mem[_715 + 32 len ceil32(_2212)]
                        if ceil32(_2212) > _2212:
                            mem[mem[64] + _2212 + 64] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[mem[64] + 32 len ceil32(_2212) + 32],
                                 arg1,
                else:
                    if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                        revert with 0, 34
                    mem[0] = sha3(arg1, 4)
                    if _1481:
                        stor4[arg1][].field_0 = Array(len=_1481, data=mem[_715 + 32 len _1481])
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[mem[64]] = 32
                        _2762 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_2762)] = mem[_715 + 32 len ceil32(_2762)]
                        var72001 = ceil32(_2762)
                        if ceil32(_2762) > _2762:
                            mem[mem[64] + _2762 + 64] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[mem[64] + 32 len ceil32(_2762) + 32],
                                 arg1,
                    else:
                        stor4[arg1].field_0 = 0
                        idx = 0
                        while stor4[arg1].field_1 + 31 / 32 > idx:
                            stor4[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[mem[64]] = 32
                        _2215 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_2215)] = mem[_715 + 32 len ceil32(_2215)]
                        var68001 = ceil32(_2215)
                        if ceil32(_2215) > _2215:
                            mem[mem[64] + _2215 + 64] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[mem[64] + 32 len ceil32(_2215) + 32],
                                 arg1,
            else:
                _1445 = mem[64]
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = 96
                _1463 = mem[_716 + 208]
                mem[mem[64] + 96] = mem[_716 + 208]
                idx = 0
                s = mem[64] + 128
                t = _716 + 240
                while idx < _1463:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1445 + 64] = (32 * _1463) + 128
                _2119 = mem[_743]
                mem[_1445 + (32 * _1463) + 128] = mem[_743]
                mem[_1445 + (32 * _1463) + 160 len 32 * _2119] = mem[_743 + 32 len 32 * _2119]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _1445 + (32 * _1463) + (32 * _2119) + -mem[64] + 160],
                balanceOf[arg1][address(msg.sender)] = arg6
                if not creators[arg1]:
                    revert with 0, '_setTokenURI: Token  exist'
                mem[0] = arg1
                mem[32] = 4
                _2750 = mem[_715]
                if stor4[arg1].field_0:
                    if stor4[arg1].field_0 == uint255(stor4[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(arg1, 4)
                    if _2750:
                        stor4[arg1][].field_0 = Array(len=_2750, data=mem[_715 + 32 len _2750])
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        _3361 = mem[64]
                        mem[mem[64]] = 32
                        _3396 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_3396)] = mem[_715 + 32 len ceil32(_3396)]
                        if ceil32(_3396) <= _3396:
                            emit URI(string rg1, uint256 rg2):
                                     32,
                                     mem[mem[64] + 32 len ceil32(_3396) + 32],
                                     arg1,
                        else:
                            mem[mem[64] + _3396 + 64] = 0
                            emit URI(mem[mem[64] len ceil32(_3396) + _3361 + -mem[64] + 64], arg1);
                    else:
                        stor4[arg1].field_0 = 0
                        idx = 0
                        while (uint255(stor4[arg1].field_0) * 0.5) + 31 / 32 > idx:
                            stor4[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[mem[64]] = 32
                        _3154 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_3154)] = mem[_715 + 32 len ceil32(_3154)]
                        if ceil32(_3154) > _3154:
                            mem[mem[64] + _3154 + 64] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[mem[64] + 32 len ceil32(_3154) + 32],
                                 arg1,
                else:
                    if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                        revert with 0, 34
                    mem[0] = sha3(arg1, 4)
                    if _2750:
                        stor4[arg1][].field_0 = Array(len=_2750, data=mem[_715 + 32 len _2750])
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[mem[64]] = 32
                        _3397 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_3397)] = mem[_715 + 32 len ceil32(_3397)]
                        if ceil32(_3397) > _3397:
                            mem[mem[64] + _3397 + 64] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[mem[64] + 32 len ceil32(_3397) + 32],
                                 arg1,
                    else:
                        stor4[arg1].field_0 = 0
                        idx = 0
                        while stor4[arg1].field_1 + 31 / 32 > idx:
                            stor4[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 32] = arg6
                        emit TransferSingle(arg1, arg6, msg.sender, 0, msg.sender);
                        mem[mem[64]] = 32
                        _3157 = mem[_715]
                        mem[mem[64] + 32] = mem[_715]
                        mem[mem[64] + 64 len ceil32(_3157)] = mem[_715 + 32 len ceil32(_3157)]
                        if ceil32(_3157) > _3157:
                            mem[mem[64] + _3157 + 64] = 0
                        emit URI(string rg1, uint256 rg2):
                                 32,
                                 mem[mem[64] + 32 len ceil32(_3157) + 32],
                                 arg1,
}



}
