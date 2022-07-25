contract main {




// =====================  Runtime code  =====================


const CAP = 2800


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
uint256 sub_84c4bd4b;
uint8 stor8; offset 160
uint8 stor8; offset 168
address multisigAddress;
mapping of uint256 sub_b674cc11;
mapping of uint8 stor10;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function ended() {
    return bool(uint8(stor8.field_168))
}

function started() {
    return bool(uint8(stor8.field_160))
}

function multisig() {
    return multisigAddress
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: address zero is not a valid owner'
    return balanceOf[address(arg1)]
}

function sub_84c4bd4b(?) {
    return sub_84c4bd4b
}

function owner() {
    return owner
}

function sub_b674cc11(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b674cc11[arg1]
}

function whitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function end() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor8.field_168) = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function start() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor8.field_160):
        revert with 0, 'Presale already started'
    if uint8(stor8.field_168):
        revert with 0, 'Presale was ended'
    uint8(stor8.field_160) = 1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawAVAX(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg1:
        revert with 0, 'not enough AVAX'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send AVAX'
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x591d4bc000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function addWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 10
        stor10[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function freeMint(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(uint8(stor8.field_168)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'VillagesFi: The free mint function needs to be called after the presale ends'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'VillagesFi: The free mint function cannot be called to itself'
    idx = 0
    while idx < arg2:
        sub_84c4bd4b++
        _50 = mem[64]
        mem[64] = mem[64] + 32
        mem[_50] = 0
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor7]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(arg1)] > -2:
            revert with 0, 17
        balanceOf[address(arg1)]++
        mem[0] = sub_84c4bd4b
        mem[32] = 2
        ownerOf[stor7] = arg1
        emit Transfer(0, arg1, sub_84c4bd4b);
        if ext_code.size(arg1):
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = sub_84c4bd4b
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 164] = mem[s + _50 + 32]
                s = s + 32
                continue 
            require ext_code.size(arg1)
            call arg1.0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, 0, sub_84c4bd4b, 128, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if not return_data.size:
                    if not mem[96]:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with memory
                      from 128
                       len mem[96]
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            _96 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_96] == Mask(32, 224, mem[_96])
            if Mask(32, 224, mem[_96]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        mem[0] = arg1
        mem[32] = 9
        if sub_b674cc11[address(arg1)] == -1:
            revert with 0, 17
        sub_b674cc11[address(arg1)]++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[ceil32(uint255(stor0.length) * 0.5) + (uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function safeMint(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if bool(uint8(stor8.field_160)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VillagesFi: The presale hasn't started yet!'
    if uint8(stor8.field_168):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'VillagesFi: The presale has ended. Thanks for participating!'
    if bool(stor10[address(arg1)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'VillagesFi: You need to be whitelisted to participate in the Whitelist presale!'
    mem[0] = arg1
    mem[32] = 9
    if sub_b674cc11[address(arg1)] > !arg2:
        revert with 0, 17
    if sub_b674cc11[address(arg1)] + arg2 > 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VillagesFi: You can mint a maximum of 4 NFTs'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VillagesFi: You can mint a maximum of 4 NFTs'
    if arg2 > 0xc4c3e8be182726b44ea9983dd85a2a69991fef05db7096a16:
        revert with 0, 17
    if msg.value < 15 * 10^17 * arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'VillagesFi: You need to pay 1.5 AVAX per NFT to mint'
    if sub_84c4bd4b > !arg2:
        revert with 0, 17
    if sub_84c4bd4b + arg2 > 2800:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'VillagesFi: There can't be more than 1000 NFTs minted, consider lowering your minting amount'
    idx = 0
    while idx < arg2:
        sub_84c4bd4b++
        _60 = mem[64]
        mem[64] = mem[64] + 32
        mem[_60] = 0
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor7]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(arg1)] > -2:
            revert with 0, 17
        balanceOf[address(arg1)]++
        mem[0] = sub_84c4bd4b
        mem[32] = 2
        ownerOf[stor7] = arg1
        emit Transfer(0, arg1, sub_84c4bd4b);
        if ext_code.size(arg1):
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = sub_84c4bd4b
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 164] = mem[s + _60 + 32]
                s = s + 32
                continue 
            require ext_code.size(arg1)
            call arg1.0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, 0, sub_84c4bd4b, 128, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if not return_data.size:
                    if not mem[96]:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with memory
                      from 128
                       len mem[96]
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            _106 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_106] == Mask(32, 224, mem[_106])
            if Mask(32, 224, mem[_106]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        mem[0] = arg1
        mem[32] = 9
        if sub_b674cc11[address(arg1)] == -1:
            revert with 0, 17
        sub_b674cc11[address(arg1)]++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[96] = 35
    mem[128 len 35] = 0xfe68747470733a2f2f76696c6c616765732e66696e616e63652f77686974656c697374
    if not arg1:
        mem[288 len 64] = 0xfe68747470733a2f2f76696c6c616765732e66696e616e63652f77686974656c697374, mem[163 len 29]
        mem[323] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[324] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[329] = 32
        mem[361] = mem[256]
        mem[393 len ceil32(mem[256])] = mem[288 len ceil32(mem[256])]
        if ceil32(mem[256]) > mem[256]:
            mem[mem[256] + 393] = 0
        return Array(len=mem[256], data=mem[393 len ceil32(mem[256])])
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[192] = s
    mem[64] = ceil32(s) + 224
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[192]:
                revert with 0, 50
            mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _133 = mem[64]
        _135 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _227 = mem[192]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            mem[_133 + _135 + _227 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_227) <= _227:
                _295 = mem[64]
                mem[64] = _133 + _135 + _227 + 37
                mem[_133 + _135 + _227 + 37] = 32
                _311 = mem[_295]
                mem[_133 + _135 + _227 + 69] = mem[_295]
                mem[_133 + _135 + _227 + 101 len ceil32(_311)] = mem[_295 + 32 len ceil32(_311)]
                if ceil32(_311) > _311:
                    mem[_133 + _135 + _227 + _311 + 101] = 0
                return 32, mem[_133 + _135 + _227 + 69 len ceil32(_311) + 32]
            _300 = mem[64]
            mem[64] = _133 + _135 + _227 + 37
            mem[_133 + _135 + _227 + 37] = 32
            _315 = mem[_300]
            mem[_133 + _135 + _227 + 69] = mem[_300]
            mem[_133 + _135 + _227 + 101 len ceil32(_315)] = mem[_300 + 32 len ceil32(_315)]
            if ceil32(_315) > _315:
                mem[_133 + _135 + _227 + _315 + 101] = 0
            return 32, mem[_133 + _135 + _227 + 69 len ceil32(_315) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _229 = mem[192]
        mem[_133 + _135 + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        mem[_133 + _135 + _229 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_229) <= _229:
            _296 = mem[64]
            mem[64] = _133 + _135 + _229 + 37
            mem[_133 + _135 + _229 + 37] = 32
            _312 = mem[_296]
            mem[_133 + _135 + _229 + 69] = mem[_296]
            mem[_133 + _135 + _229 + 101 len ceil32(_312)] = mem[_296 + 32 len ceil32(_312)]
            if ceil32(_312) > _312:
                mem[_133 + _135 + _229 + _312 + 101] = 0
            return 32, mem[_133 + _135 + _229 + 69 len ceil32(_312) + 32]
        _302 = mem[64]
        mem[64] = _133 + _135 + _229 + 37
        mem[_133 + _135 + _229 + 37] = 32
        _316 = mem[_302]
        mem[_133 + _135 + _229 + 69] = mem[_302]
        mem[_133 + _135 + _229 + 101 len ceil32(_316)] = mem[_302 + 32 len ceil32(_316)]
        if ceil32(_316) > _316:
            mem[_133 + _135 + _229 + _316 + 101] = 0
        return 32, mem[_133 + _135 + _229 + 69 len ceil32(_316) + 32]
    mem[224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[192]:
            revert with 0, 50
        mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _134 = mem[64]
    _136 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _228 = mem[192]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        mem[_134 + _136 + _228 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_228) <= _228:
            _297 = mem[64]
            mem[64] = _134 + _136 + _228 + 37
            mem[_134 + _136 + _228 + 37] = 32
            _313 = mem[_297]
            mem[_134 + _136 + _228 + 69] = mem[_297]
            mem[_134 + _136 + _228 + 101 len ceil32(_313)] = mem[_297 + 32 len ceil32(_313)]
            if ceil32(_313) > _313:
                mem[_134 + _136 + _228 + _313 + 101] = 0
            return 32, mem[_134 + _136 + _228 + 69 len ceil32(_313) + 32]
        _304 = mem[64]
        mem[64] = _134 + _136 + _228 + 37
        mem[_134 + _136 + _228 + 37] = 32
        _317 = mem[_304]
        mem[_134 + _136 + _228 + 69] = mem[_304]
        mem[_134 + _136 + _228 + 101 len ceil32(_317)] = mem[_304 + 32 len ceil32(_317)]
        if ceil32(_317) > _317:
            mem[_134 + _136 + _228 + _317 + 101] = 0
        return 32, mem[_134 + _136 + _228 + 69 len ceil32(_317) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _230 = mem[192]
    mem[_134 + _136 + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
    mem[_134 + _136 + _230 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
    if ceil32(_230) <= _230:
        _298 = mem[64]
        mem[64] = _134 + _136 + _230 + 37
        mem[_134 + _136 + _230 + 37] = 32
        _314 = mem[_298]
        mem[_134 + _136 + _230 + 69] = mem[_298]
        mem[_134 + _136 + _230 + 101 len ceil32(_314)] = mem[_298 + 32 len ceil32(_314)]
        if ceil32(_314) > _314:
            mem[_134 + _136 + _230 + _314 + 101] = 0
        return 32, mem[_134 + _136 + _230 + 69 len ceil32(_314) + 32]
    _306 = mem[64]
    mem[64] = _134 + _136 + _230 + 37
    mem[_134 + _136 + _230 + 37] = 32
    _318 = mem[_306]
    mem[_134 + _136 + _230 + 69] = mem[_306]
    mem[_134 + _136 + _230 + 101 len ceil32(_318)] = mem[_306 + 32 len ceil32(_318)]
    if ceil32(_318) > _318:
        mem[_134 + _136 + _230 + _318 + 101] = 0
    return 32, mem[_134 + _136 + _230 + 69 len ceil32(_318) + 32]
}



}
