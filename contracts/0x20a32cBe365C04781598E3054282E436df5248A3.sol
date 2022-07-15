contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
uint256 stor0;
uint256 stor1;
array of struct stor2;
array of struct stor3;
mapping of struct stor4;
mapping of struct balanceOf;
mapping of address approved;
mapping of uint8 stor7;
address owner;
uint16 maxPerWallet; offset 24
uint32 maxSupply;
address _minterAddress; offset 40
address _farmAddress;
uint256 initialBlockNumber;
uint256 currentBlockNumber;
array of struct stor15;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor0:
        revert with 3477536996
    if stor4[arg1].field_224:
        revert with 3477536996
    return approved[arg1]
}

function MAX_PER_WALLET() payable {
    return maxPerWallet
}

function MAX_SUPPLY() payable {
    return maxSupply
}

function currentBlockNumber() payable {
    return currentBlockNumber
}

function maxPerWallet() payable {
    return maxPerWallet
}

function _minter() payable {
    return _minterAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 2404300292
    return balanceOf[address(arg1)].field_0
}

function owner() payable {
    return owner
}

function _farm() payable {
    return _farmAddress
}

function initialBlockNumber() payable {
    return initialBlockNumber
}

function maxSupply() payable {
    return maxSupply
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

function totalSupply() payable {
    return (stor0 - stor1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _minterAddress = arg1
}

function setMaxPerWallet(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxPerWallet = arg1
}

function setFarmAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _farmAddress = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 2959280091
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
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    if arg1 >= stor0:
        revert with 3744308034
    mem[192] = stor4[arg1].field_0
    mem[224] = stor4[arg1].field_160
    mem[256] = bool(stor4[arg1].field_224)
    if stor4[arg1].field_224:
        revert with 3744308034
    if stor4[arg1].field_0:
        return stor4[arg1].field_0
    mem[64] = 384
    mem[288] = stor4[arg1 - 1].field_0
    mem[320] = stor4[arg1 - 1].field_160
    mem[352] = bool(stor4[arg1 - 1].field_224)
    s = 192
    s = arg1
    while not stor4[arg1 - 1].field_0:
        mem[0] = s - 2
        mem[32] = 4
        mem[64] = mem[64] + 96
        mem[288] = stor4[s - 2].field_0
        mem[320] = stor4[arg1 - 1].field_160
        mem[352] = bool(stor4[arg1 - 1].field_224)
        s = 288
        s = s - 1
        continue 
    mem[mem[64]] = mem[300 len 20]
    return memory
      from mem[64]
       len 32
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= stor0:
        revert with 3744308034
    if stor4[arg2].field_224:
        revert with 3744308034
    if stor4[arg2].field_0:
        if arg1 == stor4[arg2].field_0:
            revert with 2487188364
        if stor4[arg2].field_0 != msg.sender:
            if not stor7[stor4[arg2].field_0][address(msg.sender)]:
                revert with 3484662082
        approved[arg2] = arg1
        emit Approval(stor4[arg2].field_0, arg1, arg2);
    else:
        mem[64] = 384
        mem[288] = stor4[arg2 - 1].field_0
        s = 192
        s = arg2
        while not stor4[arg2 - 1].field_0:
            mem[0] = s - 2
            mem[32] = 4
            mem[64] = mem[64] + 96
            mem[288] = stor4[s - 2].field_0
            mem[320] = stor4[arg2 - 1].field_160
            mem[352] = bool(stor4[arg2 - 1].field_224)
            s = 288
            s = s - 1
            continue 
        if arg1 == mem[300 len 20]:
            revert with 2487188364
        if mem[300 len 20] != msg.sender:
            if not stor7[mem[300 len 20]][address(msg.sender)]:
                revert with 3484662082
        approved[arg2] = arg1
        emit Approval(mem[300 len 20], arg1, arg2);
}

function setBaseUri(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while (uint255(stor15.length) * 0.5) + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg3 >= stor0:
        revert with 3744308034
    if stor4[arg3].field_224:
        revert with 3744308034
    if stor4[arg3].field_0:
        if stor4[arg3].field_0 != arg1:
            revert with 2702475520
        if arg1 != msg.sender:
            if not stor7[address(arg1)][address(msg.sender)]:
                if arg3 >= stor0:
                    revert with 3477536996
                if stor4[arg3].field_224:
                    revert with 3477536996
                if approved[arg3] != msg.sender:
                    revert with 1506318014
        if not arg2:
            revert with 3931454260
        approved[arg3] = 0
        emit Approval(arg1, 0, arg3);
        balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
        balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
        stor4[arg3].field_0 = arg2
        stor4[arg3].field_160 = uint64(block.timestamp)
        if not stor4[arg3 + 1].field_0:
            if arg3 + 1 != stor0:
                stor4[arg3 + 1].field_0 = arg1
                stor4[arg3 + 1].field_160 = stor4[arg3].field_160
    else:
        mem[64] = 384
        mem[288] = stor4[arg3 - 1].field_0
        mem[320] = stor4[arg3 - 1].field_160
        s = 192
        s = arg3
        while not stor4[arg3 - 1].field_0:
            mem[0] = s - 2
            mem[32] = 4
            mem[64] = mem[64] + 96
            mem[288] = stor4[s - 2].field_0
            mem[320] = stor4[arg3 - 1].field_160
            mem[352] = bool(stor4[arg3 - 1].field_224)
            s = 288
            s = s - 1
            continue 
        if mem[300 len 20] != arg1:
            revert with 2702475520
        if arg1 != msg.sender:
            if not stor7[address(arg1)][address(msg.sender)]:
                if arg3 >= stor0:
                    revert with 3477536996
                if stor4[arg3].field_224:
                    revert with 3477536996
                if approved[arg3] != msg.sender:
                    revert with 1506318014
        if not arg2:
            revert with 3931454260
        approved[arg3] = 0
        emit Approval(arg1, 0, arg3);
        balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
        balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
        stor4[arg3].field_0 = arg2
        stor4[arg3].field_160 = uint64(block.timestamp)
        if not stor4[arg3 + 1].field_0:
            if arg3 + 1 != stor0:
                stor4[arg3 + 1].field_0 = arg1
                stor4[arg3 + 1].field_160 = mem[344 len 8]
    emit Transfer(arg1, arg2, arg3);
    emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
    currentBlockNumber = block.number
}

function mintTo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if _minterAddress != msg.sender:
        revert with 0, 'ERC721: caller is not the minter'
    if not arg1:
        revert with 2404300292
    if balanceOf[address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if balanceOf[address(arg1)].field_0 + arg2 > maxPerWallet:
        revert with 0, 'Max per wallet exceeded'
    if stor0 - stor1 > !arg2:
        revert with 0, 17
    if stor0 - stor1 + arg2 > maxSupply:
        revert with 0, 'Supply cap exceeded'
    mem[64] = 128
    mem[96] = 0
    if not arg1:
        revert with 772236032
    if not arg2:
        revert with 3043158237
    balanceOf[address(arg1)].field_0 = uint64(arg2 + balanceOf[address(arg1)].field_0)
    balanceOf[address(arg1)].field_64 = uint64(arg2 + balanceOf[address(arg1)].field_64)
    mem[0] = stor0
    mem[32] = 4
    stor4[stor0].field_0 = arg1
    stor4[stor0].field_160 = uint64(block.timestamp)
    if not ext_code.size(arg1):
        emit 0xd97cccf0: block.number, block.timestamp, stor0, arg1
        emit Transfer(0, arg1, stor0);
        idx = stor0
        while idx + 1 != arg2 + stor0:
            mem[128] = block.number
            mem[160] = block.timestamp
            mem[192] = idx + 1
            mem[224] = arg1
            emit 0xd97cccf0: block.number, block.timestamp, idx + 1, arg1
            emit Transfer(0, arg1, idx + 1);
            idx = idx + 1
            continue 
        stor0 = None + 3
        emit 0xbba42f4d: block.number, block.timestamp, 0, address(arg1), stor0, arg2
        currentBlockNumber = block.number
        currentBlockNumber = block.number
    mem[160] = block.timestamp
    mem[192] = stor0
    mem[224] = arg1
    emit 0xd97cccf0: block.number, block.timestamp, stor0, arg1
    emit Transfer(0, arg1, stor0);
    mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    mem[var56001] = msg.sender
    mem[var56001 + 32] = 0
    mem[var56001 + 64] = var56003
    mem[var56001 + 96] = 128
    mem[var58002] = 0
    if var40001 < var60003:
        mem[var40001 + var60002] = mem[var40001 + 128]
        var40001 = var40001 + 32
        continue 
    if var40001 > var60003:
        mem[var60003 + var60002] = 0
    require ext_code.size(arg1)
    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args mem[132 len ceil32(var60005) + var60008 - 100]
    mem[128] = ext_call.return_data[0]
    if not ext_call.success:
        if not return_data.size:
            revert with 3517284054
        if not return_data.size:
            revert with 3517284054
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 128
    require return_data.size >= 32
    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
        revert with 3517284054
    if var60026 == arg2 + stor0:
        require stor0 == stor0
        stor0 = var60026
        emit 0xbba42f4d: block.number, block.timestamp, 0, address(arg1), stor0, arg2
        currentBlockNumber = block.number
        currentBlockNumber = block.number
    emit 0xd97cccf0: block.number, block.timestamp, var60026, arg1
    emit Transfer(0, arg1, var60026);
    mem[ceil32(return_data.size) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = 0
    mem[ceil32(return_data.size) + 196] = var60026
    mem[ceil32(return_data.size) + 228] = 128
    mem[ceil32(return_data.size) + 260] = 0
    var40001 = 0
    continue 
}

function name() payable {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function symbol() payable {
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
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
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
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function baseURI() payable {
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15.length):
                if 31 < uint255(stor15.length) * 0.5:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor15.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * stor15.length.field_8
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * stor15.length.field_8
        mem[ceil32(uint255(stor15.length) * 0.5) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
        if ceil32(uint255(stor15.length) * 0.5) > uint255(stor15.length) * 0.5:
            mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)], mem[(2 * ceil32(uint255(stor15.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor15.length) * 0.5)]), 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 0, 34
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor15.length):
            if 31 < uint255(stor15.length) * 0.5:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while (uint255(stor15.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
    if ceil32(stor15.length.field_1) > stor15.length.field_1:
        mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    if arg3 >= stor0:
        revert with 3744308034
    mem[224] = stor4[arg3].field_0
    mem[256] = stor4[arg3].field_160
    mem[288] = bool(stor4[arg3].field_224)
    if stor4[arg3].field_224:
        revert with 3744308034
    if stor4[arg3].field_0:
        if stor4[arg3].field_0 != arg1:
            revert with 2702475520
        if arg1 != msg.sender:
            if not stor7[address(arg1)][address(msg.sender)]:
                if arg3 >= stor0:
                    revert with 3477536996
                if stor4[arg3].field_224:
                    revert with 3477536996
                if approved[arg3] != msg.sender:
                    revert with 1506318014
        if not arg2:
            revert with 3931454260
        approved[arg3] = 0
        emit Approval(arg1, 0, arg3);
        balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
        balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
        stor4[arg3].field_0 = arg2
        stor4[arg3].field_160 = uint64(block.timestamp)
        if not stor4[arg3 + 1].field_0:
            if arg3 + 1 != stor0:
                stor4[arg3 + 1].field_0 = arg1
                stor4[arg3 + 1].field_160 = stor4[arg3].field_160
        emit Transfer(arg1, arg2, arg3);
        emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
        currentBlockNumber = block.number
        if ext_code.size(arg2):
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                if not return_data.size:
                    revert with 3517284054
                if not return_data.size:
                    revert with 3517284054
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 3517284054
    else:
        mem[64] = 416
        mem[320] = stor4[arg3 - 1].field_0
        mem[352] = stor4[arg3 - 1].field_160
        mem[384] = bool(stor4[arg3 - 1].field_224)
        s = 224
        s = arg3
        while not stor4[arg3 - 1].field_0:
            mem[0] = s - 2
            mem[32] = 4
            mem[64] = mem[64] + 96
            mem[320] = stor4[s - 2].field_0
            mem[352] = stor4[arg3 - 1].field_160
            mem[384] = bool(stor4[arg3 - 1].field_224)
            s = 320
            s = s - 1
            continue 
        if mem[332 len 20] != arg1:
            revert with 2702475520
        if arg1 == msg.sender:
            if not arg2:
                revert with 3931454260
            approved[arg3] = 0
            emit Approval(arg1, 0, arg3);
            balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
            balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
            mem[32] = 4
            stor4[arg3].field_0 = arg2
            stor4[arg3].field_160 = uint64(block.timestamp)
            mem[0] = arg3 + 1
            if stor4[arg3 + 1].field_0:
                emit Transfer(arg1, arg2, arg3);
                mem[mem[64] + 160] = 1
                emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
                currentBlockNumber = block.number
                if ext_code.size(arg2):
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = arg3
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164 len 0] = None
                    require ext_code.size(arg2)
                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            revert with 3517284054
                        if not return_data.size:
                            revert with 3517284054
                        revert with ext_call.return_data[0 len return_data.size]
                    _1367 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1367] == Mask(32, 224, mem[_1367])
                    if Mask(32, 224, mem[_1367]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 3517284054
            else:
                if arg3 + 1 == stor0:
                    emit Transfer(arg1, arg2, arg3);
                    mem[mem[64] + 160] = 1
                    emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
                    currentBlockNumber = block.number
                    if ext_code.size(arg2):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164 len 0] = None
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                revert with 3517284054
                            if not return_data.size:
                                revert with 3517284054
                            revert with ext_call.return_data[0 len return_data.size]
                        _1369 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1369] == Mask(32, 224, mem[_1369])
                        if Mask(32, 224, mem[_1369]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 3517284054
                else:
                    stor4[arg3 + 1].field_0 = arg1
                    stor4[arg3 + 1].field_160 = mem[376 len 8]
                    emit Transfer(arg1, arg2, arg3);
                    mem[mem[64] + 160] = 1
                    emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
                    currentBlockNumber = block.number
                    if ext_code.size(arg2):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164 len 0] = None
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                revert with 3517284054
                            if not return_data.size:
                                revert with 3517284054
                            revert with ext_call.return_data[0 len return_data.size]
                        _1371 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1371] == Mask(32, 224, mem[_1371])
                        if Mask(32, 224, mem[_1371]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 3517284054
        else:
            if stor7[address(arg1)][address(msg.sender)]:
                if not arg2:
                    revert with 3931454260
                approved[arg3] = 0
                emit Approval(arg1, 0, arg3);
                balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
                balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
                mem[32] = 4
                stor4[arg3].field_0 = arg2
                stor4[arg3].field_160 = uint64(block.timestamp)
                mem[0] = arg3 + 1
                if stor4[arg3 + 1].field_0:
                    emit Transfer(arg1, arg2, arg3);
                    mem[mem[64] + 160] = 1
                    emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
                    currentBlockNumber = block.number
                    if ext_code.size(arg2):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164 len 0] = None
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                revert with 3517284054
                            if not return_data.size:
                                revert with 3517284054
                            revert with ext_call.return_data[0 len return_data.size]
                        _1373 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1373] == Mask(32, 224, mem[_1373])
                        if Mask(32, 224, mem[_1373]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 3517284054
                else:
                    if arg3 + 1 == stor0:
                        emit Transfer(arg1, arg2, arg3);
                        mem[mem[64] + 160] = 1
                        emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
                        currentBlockNumber = block.number
                        if ext_code.size(arg2):
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164 len 0] = None
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    revert with 3517284054
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1375 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1375] == Mask(32, 224, mem[_1375])
                            if Mask(32, 224, mem[_1375]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                    else:
                        stor4[arg3 + 1].field_0 = arg1
                        stor4[arg3 + 1].field_160 = mem[376 len 8]
                        emit Transfer(arg1, arg2, arg3);
                        mem[mem[64] + 160] = 1
                        emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
                        currentBlockNumber = block.number
                        if ext_code.size(arg2):
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164 len 0] = None
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    revert with 3517284054
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1377 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1377] == Mask(32, 224, mem[_1377])
                            if Mask(32, 224, mem[_1377]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
            else:
                if arg3 >= stor0:
                    revert with 3477536996
                if stor4[arg3].field_224:
                    revert with 3477536996
                if approved[arg3] != msg.sender:
                    revert with 1506318014
                if not arg2:
                    revert with 3931454260
                approved[arg3] = 0
                emit Approval(arg1, 0, arg3);
                balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
                balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
                mem[32] = 4
                stor4[arg3].field_0 = arg2
                stor4[arg3].field_160 = uint64(block.timestamp)
                mem[0] = arg3 + 1
                if stor4[arg3 + 1].field_0:
                    emit Transfer(arg1, arg2, arg3);
                    mem[mem[64] + 160] = 1
                    emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
                    currentBlockNumber = block.number
                    if ext_code.size(arg2):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164 len 0] = None
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                revert with 3517284054
                            if not return_data.size:
                                revert with 3517284054
                            revert with ext_call.return_data[0 len return_data.size]
                        _1379 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1379] == Mask(32, 224, mem[_1379])
                        if Mask(32, 224, mem[_1379]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 3517284054
                else:
                    if arg3 + 1 == stor0:
                        emit Transfer(arg1, arg2, arg3);
                        mem[mem[64] + 160] = 1
                        emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
                        currentBlockNumber = block.number
                        if ext_code.size(arg2):
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164 len 0] = None
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    revert with 3517284054
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1381 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1381] == Mask(32, 224, mem[_1381])
                            if Mask(32, 224, mem[_1381]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                    else:
                        stor4[arg3 + 1].field_0 = arg1
                        stor4[arg3 + 1].field_160 = mem[376 len 8]
                        emit Transfer(arg1, arg2, arg3);
                        mem[mem[64] + 160] = 1
                        emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
                        currentBlockNumber = block.number
                        if ext_code.size(arg2):
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164 len 0] = None
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    revert with 3517284054
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1383 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1383] == Mask(32, 224, mem[_1383])
                            if Mask(32, 224, mem[_1383]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg4.length)) + 97] = 0
    mem[ceil32(ceil32(arg4.length)) + 129] = 0
    mem[ceil32(ceil32(arg4.length)) + 161] = 0
    if arg3 >= stor0:
        revert with 3744308034
    mem[ceil32(ceil32(arg4.length)) + 193] = stor4[arg3].field_0
    mem[ceil32(ceil32(arg4.length)) + 225] = stor4[arg3].field_160
    mem[ceil32(ceil32(arg4.length)) + 257] = bool(stor4[arg3].field_224)
    if stor4[arg3].field_224:
        revert with 3744308034
    if stor4[arg3].field_0:
        if stor4[arg3].field_0 != arg1:
            revert with 2702475520
        if arg1 != msg.sender:
            if not stor7[address(arg1)][address(msg.sender)]:
                if arg3 >= stor0:
                    revert with 3477536996
                if stor4[arg3].field_224:
                    revert with 3477536996
                if approved[arg3] != msg.sender:
                    revert with 1506318014
        if not arg2:
            revert with 3931454260
        approved[arg3] = 0
        emit Approval(arg1, 0, arg3);
        balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
        balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
        stor4[arg3].field_0 = arg2
        stor4[arg3].field_160 = uint64(block.timestamp)
        if not stor4[arg3 + 1].field_0:
            if arg3 + 1 != stor0:
                stor4[arg3 + 1].field_0 = arg1
                stor4[arg3 + 1].field_160 = stor4[arg3].field_160
        emit Transfer(arg1, arg2, arg3);
        emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
        currentBlockNumber = block.number
        if ext_code.size(arg2):
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                if not return_data.size:
                    if not arg4.length:
                        revert with 3517284054
                    revert with arg4[all]
                if not return_data.size:
                    revert with 3517284054
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 3517284054
    else:
        mem[64] = ceil32(ceil32(arg4.length)) + 385
        mem[ceil32(ceil32(arg4.length)) + 289] = stor4[arg3 - 1].field_0
        mem[ceil32(ceil32(arg4.length)) + 321] = stor4[arg3 - 1].field_160
        mem[ceil32(ceil32(arg4.length)) + 353] = bool(stor4[arg3 - 1].field_224)
        s = ceil32(ceil32(arg4.length)) + 193
        s = arg3
        while not stor4[arg3 - 1].field_0:
            mem[0] = s - 2
            mem[32] = 4
            mem[64] = mem[64] + 96
            mem[ceil32(ceil32(arg4.length)) + 289] = stor4[s - 2].field_0
            mem[ceil32(ceil32(arg4.length)) + 321] = stor4[arg3 - 1].field_160
            mem[ceil32(ceil32(arg4.length)) + 353] = bool(stor4[arg3 - 1].field_224)
            s = ceil32(ceil32(arg4.length)) + 289
            s = s - 1
            continue 
        if mem[ceil32(ceil32(arg4.length)) + 301 len 20] != arg1:
            revert with 2702475520
        if arg1 == msg.sender:
            if not arg2:
                revert with 3931454260
            approved[arg3] = 0
            emit Approval(arg1, 0, arg3);
            balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
            balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
            mem[32] = 4
            stor4[arg3].field_0 = arg2
            stor4[arg3].field_160 = uint64(block.timestamp)
            mem[0] = arg3 + 1
            if stor4[arg3 + 1].field_0:
                emit Transfer(arg1, arg2, arg3);
                mem[mem[64] + 160] = 1
                emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
                currentBlockNumber = block.number
                if ext_code.size(arg2):
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    mem[mem[64] + 68] = arg3
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = arg4.length
                    mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                    if ceil32(arg4.length) <= arg4.length:
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not arg4.length:
                                    revert with 3517284054
                                revert with arg4[all]
                            if not return_data.size:
                                revert with 3517284054
                            revert with ext_call.return_data[0 len return_data.size]
                        _1367 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1367] == Mask(32, 224, mem[_1367])
                        if Mask(32, 224, mem[_1367]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 3517284054
                    else:
                        mem[arg4.length + mem[64] + 164] = 0
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not arg4.length:
                                    revert with 3517284054
                                revert with arg4[all]
                            if not return_data.size:
                                revert with 3517284054
                            revert with ext_call.return_data[0 len return_data.size]
                        _1368 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1368] == Mask(32, 224, mem[_1368])
                        if Mask(32, 224, mem[_1368]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 3517284054
            else:
                if arg3 + 1 == stor0:
                    emit Transfer(arg1, arg2, arg3);
                    mem[mem[64] + 160] = 1
                    emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
                    currentBlockNumber = block.number
                    if ext_code.size(arg2):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = arg4.length
                        mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                        if ceil32(arg4.length) <= arg4.length:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1369 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1369] == Mask(32, 224, mem[_1369])
                            if Mask(32, 224, mem[_1369]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                        else:
                            mem[arg4.length + mem[64] + 164] = 0
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1370 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1370] == Mask(32, 224, mem[_1370])
                            if Mask(32, 224, mem[_1370]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                else:
                    stor4[arg3 + 1].field_0 = arg1
                    stor4[arg3 + 1].field_160 = mem[ceil32(ceil32(arg4.length)) + 345 len 8]
                    emit Transfer(arg1, arg2, arg3);
                    mem[mem[64] + 160] = 1
                    emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
                    currentBlockNumber = block.number
                    if ext_code.size(arg2):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = arg4.length
                        mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                        if ceil32(arg4.length) <= arg4.length:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1371 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1371] == Mask(32, 224, mem[_1371])
                            if Mask(32, 224, mem[_1371]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                        else:
                            mem[arg4.length + mem[64] + 164] = 0
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1372 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1372] == Mask(32, 224, mem[_1372])
                            if Mask(32, 224, mem[_1372]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
        else:
            if stor7[address(arg1)][address(msg.sender)]:
                if not arg2:
                    revert with 3931454260
                approved[arg3] = 0
                emit Approval(arg1, 0, arg3);
                balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
                balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
                mem[32] = 4
                stor4[arg3].field_0 = arg2
                stor4[arg3].field_160 = uint64(block.timestamp)
                mem[0] = arg3 + 1
                if stor4[arg3 + 1].field_0:
                    emit Transfer(arg1, arg2, arg3);
                    mem[mem[64] + 160] = 1
                    emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
                    currentBlockNumber = block.number
                    if ext_code.size(arg2):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = arg4.length
                        mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                        if ceil32(arg4.length) <= arg4.length:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1373 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1373] == Mask(32, 224, mem[_1373])
                            if Mask(32, 224, mem[_1373]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                        else:
                            mem[arg4.length + mem[64] + 164] = 0
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1374 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1374] == Mask(32, 224, mem[_1374])
                            if Mask(32, 224, mem[_1374]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                else:
                    if arg3 + 1 == stor0:
                        emit Transfer(arg1, arg2, arg3);
                        mem[mem[64] + 160] = 1
                        emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
                        currentBlockNumber = block.number
                        if ext_code.size(arg2):
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = arg4.length
                            mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                            if ceil32(arg4.length) <= arg4.length:
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1375 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1375] == Mask(32, 224, mem[_1375])
                                if Mask(32, 224, mem[_1375]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
                            else:
                                mem[arg4.length + mem[64] + 164] = 0
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1376 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1376] == Mask(32, 224, mem[_1376])
                                if Mask(32, 224, mem[_1376]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
                    else:
                        stor4[arg3 + 1].field_0 = arg1
                        stor4[arg3 + 1].field_160 = mem[ceil32(ceil32(arg4.length)) + 345 len 8]
                        emit Transfer(arg1, arg2, arg3);
                        mem[mem[64] + 160] = 1
                        emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
                        currentBlockNumber = block.number
                        if ext_code.size(arg2):
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = arg4.length
                            mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                            if ceil32(arg4.length) <= arg4.length:
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1377 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1377] == Mask(32, 224, mem[_1377])
                                if Mask(32, 224, mem[_1377]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
                            else:
                                mem[arg4.length + mem[64] + 164] = 0
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1378 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1378] == Mask(32, 224, mem[_1378])
                                if Mask(32, 224, mem[_1378]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
            else:
                if arg3 >= stor0:
                    revert with 3477536996
                if stor4[arg3].field_224:
                    revert with 3477536996
                if approved[arg3] != msg.sender:
                    revert with 1506318014
                if not arg2:
                    revert with 3931454260
                approved[arg3] = 0
                emit Approval(arg1, 0, arg3);
                balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - 1)
                balanceOf[arg2].field_0 = uint64(balanceOf[arg2].field_0 + 1)
                mem[32] = 4
                stor4[arg3].field_0 = arg2
                stor4[arg3].field_160 = uint64(block.timestamp)
                mem[0] = arg3 + 1
                if stor4[arg3 + 1].field_0:
                    emit Transfer(arg1, arg2, arg3);
                    mem[mem[64] + 160] = 1
                    emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
                    currentBlockNumber = block.number
                    if ext_code.size(arg2):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = arg1
                        mem[mem[64] + 68] = arg3
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = arg4.length
                        mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                        if ceil32(arg4.length) <= arg4.length:
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1379 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1379] == Mask(32, 224, mem[_1379])
                            if Mask(32, 224, mem[_1379]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                        else:
                            mem[arg4.length + mem[64] + 164] = 0
                            require ext_code.size(arg2)
                            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not arg4.length:
                                        revert with 3517284054
                                    revert with arg4[all]
                                if not return_data.size:
                                    revert with 3517284054
                                revert with ext_call.return_data[0 len return_data.size]
                            _1380 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1380] == Mask(32, 224, mem[_1380])
                            if Mask(32, 224, mem[_1380]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 3517284054
                else:
                    if arg3 + 1 == stor0:
                        emit Transfer(arg1, arg2, arg3);
                        mem[mem[64] + 160] = 1
                        emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
                        currentBlockNumber = block.number
                        if ext_code.size(arg2):
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = arg4.length
                            mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                            if ceil32(arg4.length) <= arg4.length:
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1381 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1381] == Mask(32, 224, mem[_1381])
                                if Mask(32, 224, mem[_1381]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
                            else:
                                mem[arg4.length + mem[64] + 164] = 0
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1382 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1382] == Mask(32, 224, mem[_1382])
                                if Mask(32, 224, mem[_1382]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
                    else:
                        stor4[arg3 + 1].field_0 = arg1
                        stor4[arg3 + 1].field_160 = mem[ceil32(ceil32(arg4.length)) + 345 len 8]
                        emit Transfer(arg1, arg2, arg3);
                        mem[mem[64] + 160] = 1
                        emit 0xbba42f4d: block.number, block.timestamp, address(arg1), address(arg2), arg3, 1
                        currentBlockNumber = block.number
                        if ext_code.size(arg2):
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = arg3
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = arg4.length
                            mem[mem[64] + 164 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 0) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                            if ceil32(arg4.length) <= arg4.length:
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1383 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1383] == Mask(32, 224, mem[_1383])
                                if Mask(32, 224, mem[_1383]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
                            else:
                                mem[arg4.length + mem[64] + 164] = 0
                                require ext_code.size(arg2)
                                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not arg4.length:
                                            revert with 3517284054
                                        revert with arg4[all]
                                    if not return_data.size:
                                        revert with 3517284054
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1384 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1384] == Mask(32, 224, mem[_1384])
                                if Mask(32, 224, mem[_1384]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 3517284054
}



}
