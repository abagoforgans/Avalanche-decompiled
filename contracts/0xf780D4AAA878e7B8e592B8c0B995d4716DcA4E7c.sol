contract main {




// =====================  Runtime code  =====================


const tokenMintCandyActive = 1

const mintCandyTraitsNum = 1

const tokenCandy = 1

const tokenPumpkin = 0

const tokenTypesNum = 2

const mintPumpkinTraitsNum = 5

const mintPaidAmountMax = 20

const tokenMintSuperElkActive = 2

const mintPaidPumpkinPrice = 95 * 10^16

const tokenMintPumpkinActive = 0

const mintSupplyMax = 10000


array of struct stor0;
array of struct stor1;
array of uint256 stor10;
array of struct stor11;
bool stor12;
uint256 stor12;
mapping of uint256 tokenUsed;
array of struct mintNextId;
array of uint256 stor14;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
uint8 stor6;
address owner; offset 8
array of uint256 stor639;
array of uint64 stor7;
array of struct stor8;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function paused() {
    return bool(stor6)
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function mintCandyFreq(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor10.length
    return mintCandyFreq[uint8(arg1)]
}

function owner() {
    return owner
}

function tokenUsed(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenUsed[arg1]
}

function tokenSeed(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 < 2
    require arg2 < 10000
    return tokenSeed[uint8(arg2)]
}

function mintPumpkinFreq(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 < stor7.length
    require arg2 < stor7[arg1].field_0
    return mintPumpkinFreq[uint8(arg2)]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function mintNextId(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 2
    return uint16(mintNextId[uint8(arg1)].field_0)
}

function _fallback() payable {
    revert
}

function _HEX_SYMBOLS() {
    return '0123456789abcdefghijklmnopqrstuv'
}

function getBit(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return bool(1 << arg2 and arg1)
}

function tokenIdToTokenIdx(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 262144
    return uint16(arg1)
}

function flagRead(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(1 << arg1 and uint256(stor12))
}

function quasiRandom(uint256 arg1) {
    require calldata.size - 4 >= 32
    return sha3(block.difficulty, block.timestamp, msg.sender, arg1)
}

function tokenIdToTokenType(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 262144
    return (Mask(2, 16, arg1) >> 16)
}

function tokenIdBuild(uint8 arg1, uint16 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0, arg1, arg2
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor6:
        revert with 0, 'Pausable: paused'
    stor6 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor6:
        revert with 0, 'Pausable: not paused'
    stor6 = 0
    emit Unpaused(msg.sender);
}

function flagSet(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor12) = 1 << arg1 or uint256(stor12)
}

function flagClear(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor12) = !(1 << arg1) and uint256(stor12)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
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

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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

function mintCandyFreqGet() {
    mem[64] = (32 * stor10.length) + 128
    mem[96] = stor10.length
    if not stor10.length:
        mem[(32 * stor10.length) + 128] = 32
        mem[(32 * stor10.length) + 160] = stor10.length
        idx = 0
        s = 128
        t = (32 * stor10.length) + 192
        while idx < stor10.length:
            mem[t] = mem[s + 24 len 8]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor10.length) + 128
           len (96 * stor10.length) + 64
    mem[128] = uint64(stor10.field_0)
    idx = 128
    s = 0
    while (32 * stor10.length) + 96 > idx:
        mem[idx + 32] = uint64(stor10.field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s))
        idx = idx + 32
        s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        continue 
    mem[(32 * stor10.length) + 128] = 32
    mem[(32 * stor10.length) + 160] = stor10.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor10.length:
        mem[t] = mem[s + 24 len 8]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor10.length) + -mem[64] + 192
}

function mintPumpkinFreqGet() {
    mem[64] = (32 * stor7.length) + 128
    mem[96] = stor7.length
    s = 128
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        _12 = mem[64]
        mem[64] = mem[64] + (32 * stor7[idx].field_0) + 32
        mem[_12] = stor7[idx].field_0
        if stor7[idx].field_0:
            mem[0] = idx + sha3(7)
            mem[_12 + 32] = uint64(stor7[idx].field_0)
            t = _12 + 32
            u = 0
            while _12 + (32 * stor7[idx].field_0) > t:
                mem[t + 32] = uint64(stor7[idx].field_8 * (8 * -(u + 15 / 32) + 1) + u - (u + 15 / 32 * u))
                t = t + 32
                u = (8 * -(u + 15 / 32) + 1) + u - (u + 15 / 32 * u)
                continue 
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _15:
        mem[t] = u + -_13 - 64
        _20 = mem[s]
        _22 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        w = _20 + 32
        x = u + 32
        while v < _22:
            mem[x] = mem[w + 24 len 8]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        v = _22 + 1
        w = _20 + (32 * _22) + 64
        t = t + 32
        u = u + (32 * _22) + 32
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function withdraw() {
    mem[96] = 0xb4936571d4d86587af0867062cf50a7e2aad783d
    mem[128] = 0xbb8fb5893e4c1a26bc86e7ee57fc608f7a4dbcc8
    mem[160] = 0x9ef61d207d6cb4610eff72b5e5e544e6d28c725d
    mem[192] = 0x1b34d3d8411c627e0fcb1be625e2f42ad67d655c
    mem[224] = 0x1b34d3d8411c627e0fcb1be625e2f42ad67d655c
    mem[256] = 0x1b34d3d8411c627e0fcb1be625e2f42ad67d655c
    mem[288] = 0x8372d4216c5ccc54a81b1bfb7cea319043ae4daa
    mem[320] = 1
    mem[352] = 4
    mem[384] = 3
    mem[416] = 3
    mem[448] = 3
    mem[480] = 3
    mem[512] = 3
    if 0xb4936571d4d86587af0867062cf50a7e2aad783d != msg.sender:
        if 0xbb8fb5893e4c1a26bc86e7ee57fc608f7a4dbcc8 != msg.sender:
            if 0x9ef61d207d6cb4610eff72b5e5e544e6d28c725d != msg.sender:
                if 0x1b34d3d8411c627e0fcb1be625e2f42ad67d655c != msg.sender:
                    if 0x1b34d3d8411c627e0fcb1be625e2f42ad67d655c != msg.sender:
                        if 0x1b34d3d8411c627e0fcb1be625e2f42ad67d655c != msg.sender:
                            if 0x8372d4216c5ccc54a81b1bfb7cea319043ae4daa != msg.sender:
                                require msg.sender == owner
    idx = 0
    while idx < 7:
        if eth.balance(this.address) and mem[(32 * idx) + 351 len 1] > -1 / eth.balance(this.address):
            revert with 0, 17
        call mem[(32 * idx) + 108 len 20] with:
           value eth.balance(this.address) * mem[(32 * idx) + 351 len 1] / 20 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function mintPaidPumpkin(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor6:
        revert with 0, 'Pausable: paused'
    require bool(stor12)
    require arg1 > 0
    require arg1 <= 20
    if arg1 > !uint16(mintNextId.length):
        revert with 0, 17
    require arg1 + uint16(mintNextId.length) <= 10000
    if arg1 and 95 * 10^16 > -1 / arg1:
        revert with 0, 17
    require msg.value >= 95 * 10^16 * arg1
    idx = 0
    while uint16(idx) < arg1:
        require uint16(mintNextId.length) < 10000
        _43 = mem[64]
        mem[64] = mem[64] + 32
        mem[_43] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[uint16(stor13.length)]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        mem[0] = uint16(mintNextId.length)
        mem[32] = 2
        ownerOf[uint16(stor13.length)] = msg.sender
        emit Transfer(0, msg.sender, uint16(mintNextId.length));
        if ext_code.size(msg.sender):
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = uint16(mintNextId.length)
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 164] = mem[s + _43 + 32]
                s = s + 32
                continue 
            require ext_code.size(msg.sender)
            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, uint16(mintNextId.length), 128, 0
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
            _86 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_86] == Mask(32, 224, mem[_86])
            if Mask(32, 224, mem[_86]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if uint16(mintNextId.length) >= 10000:
            revert with 0, 50
        stor14[stor13.length.field_4 % 4096] = uint16(mintNextId.length) * 256^(2 * mintNextId.length % 16) or !(65535 * 256^(2 * mintNextId.length % 16)) and stor14[stor13.length.field_4 % 4096]
        if uint16(mintNextId.length) == 65535:
            revert with 0, 17
        uint16(mintNextId.length) = uint16(uint16(mintNextId.length) + 1)
        if uint16(idx) == 65535:
            revert with 0, 17
        idx = uint16(idx) + 1
        continue 
}

function mintSafeOwner(address arg1, uint8 arg2, uint16 arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while uint16(idx) < arg3:
        if arg2 >= 2:
            revert with 0, 50
        require uint16(mintNextId[uint8(arg2)].field_0) < 10000
        if arg2 >= 2:
            revert with 0, 50
        _43 = mem[64]
        mem[64] = mem[64] + 32
        mem[_43] = 0
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[uint16(stor13[uint8(arg2)].field_0) or uint8(arg2) << 16]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(arg1)] > -2:
            revert with 0, 17
        balanceOf[address(arg1)]++
        mem[0] = uint16(mintNextId[uint8(arg2)].field_0) or uint8(arg2) << 16
        mem[32] = 2
        ownerOf[uint16(stor13[uint8(arg2)].field_0) or uint8(arg2) << 16] = arg1
        emit Transfer(0, arg1, uint16(mintNextId[uint8(arg2)].field_0) or uint8(arg2) << 16);
        if ext_code.size(arg1):
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = uint16(mintNextId[uint8(arg2)].field_0) or uint8(arg2) << 16
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 164] = mem[s + _43 + 32]
                s = s + 32
                continue 
            require ext_code.size(arg1)
            call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, uint16(mintNextId[uint8(arg2)].field_0) or uint8(arg2) << 16, 128, 0
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
            _86 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_86] == Mask(32, 224, mem[_86])
            if Mask(32, 224, mem[_86]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if arg2 >= 2:
            revert with 0, 50
        if uint16(mintNextId[uint8(arg2)].field_0) >= 10000:
            revert with 0, 50
        stor[(uint16(stor13[uint8(arg2) / 16].field_0 / 256^(2 * arg2 % 16)) / 16) + (625 * arg2) + 14] = uint16(mintNextId[uint8(arg2)].field_0) * 256^(2 * mintNextId[uint8(arg2) / 16].field_16 * arg2 % 16 % 16) or !(65535 * 256^(2 * mintNextId[uint8(arg2) / 16].field_16 * arg2 % 16 % 16)) and stor[(uint16(stor13[uint8(arg2) / 16].field_0 / 256^(2 * arg2 % 16)) / 16) + (625 * arg2) + 14]
        if arg2 >= 2:
            revert with 0, 50
        if uint16(mintNextId[uint8(arg2)].field_0) == 65535:
            revert with 0, 17
        mintNextId[uint8(arg2) / 16].field_0 = uint16(uint16(mintNextId[uint8(arg2)].field_0) + 1) * 256^(2 * arg2 % 16) or !(65535 * 256^(2 * arg2 % 16)) and mintNextId[uint8(arg2) / 16].field_0
        if uint16(idx) == 65535:
            revert with 0, 17
        idx = uint16(idx) + 1
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
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
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
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[stor0.length.field_1 % 128 + ceil32(stor0.length.field_1 % 128) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
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
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor1.length.field_1 % 128:
                if 31 < stor1.length.field_1 % 128:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
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
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor1.length.field_1 % 128:
            if 31 < stor1.length.field_1 % 128:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    mem[ceil32(stor1.length.field_1 % 128) + 192 len ceil32(stor1.length.field_1 % 128)] = mem[128 len ceil32(stor1.length.field_1 % 128)]
    if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
        mem[stor1.length.field_1 % 128 + ceil32(stor1.length.field_1 % 128) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function mintPumpkinTraitNames(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor8.length
    if bool(stor8[arg1].field_0):
        if bool(stor8[arg1].field_0) == uint255(stor8[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor8[arg1].field_0):
            if bool(stor8[arg1].field_0) == uint255(stor8[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor8[arg1].field_0):
                if 31 < uint255(stor8[arg1].field_0) * 0.5:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor8[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor8[arg1 + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
        else:
            if bool(stor8[arg1].field_0) == stor8[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor8[arg1].field_1 % 128:
                if 31 < stor8[arg1].field_1 % 128:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while stor8[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor8[arg1 + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
            mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
    if bool(stor8[arg1].field_0) == stor8[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor8[arg1].field_0):
        if bool(stor8[arg1].field_0) == uint255(stor8[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor8[arg1].field_0):
            if 31 < uint255(stor8[arg1].field_0) * 0.5:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor8[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor8[arg1 + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[arg1].field_0 % 128, data=mem[128 len ceil32(stor8[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
    else:
        if bool(stor8[arg1].field_0) == stor8[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor8[arg1].field_1 % 128:
            if 31 < stor8[arg1].field_1 % 128:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while stor8[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor8[arg1 + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[arg1].field_0 % 128, data=mem[128 len ceil32(stor8[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
    mem[ceil32(stor8[arg1].field_1 % 128) + 192 len ceil32(stor8[arg1].field_1 % 128)] = mem[128 len ceil32(stor8[arg1].field_1 % 128)]
    if ceil32(stor8[arg1].field_1 % 128) > stor8[arg1].field_1 % 128:
        mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor8[arg1].field_0 % 128, data=mem[128 len ceil32(stor8[arg1].field_1 % 128)], mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor8[arg1].field_1 % 128)]), 
}

function mintCandyTraitVals(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor11.length
    if bool(stor11[arg1].field_0):
        if bool(stor11[arg1].field_0) == uint255(stor11[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor11[arg1].field_0):
            if bool(stor11[arg1].field_0) == uint255(stor11[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor11[arg1].field_0):
                if 31 < uint255(stor11[arg1].field_0) * 0.5:
                    mem[128] = stor11[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor11[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor11[arg1 + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11[arg1].field_0), data=mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor11[arg1].field_8)
        else:
            if bool(stor11[arg1].field_0) == stor11[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor11[arg1].field_1 % 128:
                if 31 < stor11[arg1].field_1 % 128:
                    mem[128] = stor11[arg1].field_0
                    idx = 128
                    s = 0
                    while stor11[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor11[arg1 + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11[arg1].field_0), data=mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor11[arg1].field_8)
        mem[ceil32(uint255(stor11[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor11[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor11[arg1].field_0) * 0.5) > uint255(stor11[arg1].field_0) * 0.5:
            mem[(uint255(stor11[arg1].field_0) * 0.5) + ceil32(uint255(stor11[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11[arg1].field_0), data=mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor11[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor11[arg1].field_0) * 0.5)]), 
    if bool(stor11[arg1].field_0) == stor11[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor11[arg1].field_0):
        if bool(stor11[arg1].field_0) == uint255(stor11[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor11[arg1].field_0):
            if 31 < uint255(stor11[arg1].field_0) * 0.5:
                mem[128] = stor11[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor11[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor11[arg1 + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11[arg1].field_0 % 128, data=mem[128 len ceil32(stor11[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor11[arg1].field_8)
    else:
        if bool(stor11[arg1].field_0) == stor11[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor11[arg1].field_1 % 128:
            if 31 < stor11[arg1].field_1 % 128:
                mem[128] = stor11[arg1].field_0
                idx = 128
                s = 0
                while stor11[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor11[arg1 + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11[arg1].field_0 % 128, data=mem[128 len ceil32(stor11[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor11[arg1].field_8)
    mem[ceil32(stor11[arg1].field_1 % 128) + 192 len ceil32(stor11[arg1].field_1 % 128)] = mem[128 len ceil32(stor11[arg1].field_1 % 128)]
    if ceil32(stor11[arg1].field_1 % 128) > stor11[arg1].field_1 % 128:
        mem[stor11[arg1].field_1 % 128 + ceil32(stor11[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor11[arg1].field_0 % 128, data=mem[128 len ceil32(stor11[arg1].field_1 % 128)], mem[(2 * ceil32(stor11[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor11[arg1].field_1 % 128)]), 
}

function mintPumpkinTraitNamesGet() {
    mem[64] = (32 * stor8.length) + 128
    mem[96] = stor8.length
    s = 128
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        if bool(stor8[idx].field_0):
            if bool(stor8[idx].field_0) == uint255(stor8[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _18 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor8[idx].field_0) * 0.5) + 32
            mem[_18] = uint255(stor8[idx].field_0) * 0.5
            if bool(stor8[idx].field_0):
                if bool(stor8[idx].field_0) == uint255(stor8[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor8[idx].field_0):
                    if 31 >= uint255(stor8[idx].field_0) * 0.5:
                        mem[_18 + 32] = 256 * Mask(248, 0, stor8[idx].field_8)
                    else:
                        mem[0] = sha3(8) + idx
                        mem[_18 + 32] = stor8[idx].field_0
                        t = _18 + 32
                        u = sha3(mem[0])
                        while _18 + (uint255(stor8[idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor8[idx].field_0) == stor8[idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor8[idx].field_1 % 128:
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor8[idx].field_1 % 128:
                mem[_18 + 32] = 256 * Mask(248, 0, stor8[idx].field_8)
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(8) + idx
            mem[_18 + 32] = stor8[idx].field_0
            t = _18 + 32
            u = sha3(mem[0])
            while _18 + stor8[u].field_1 % 128 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _18
            t = t + 32
            u = u + 1
            continue 
        if bool(stor8[idx].field_0) == stor8[idx].field_1 % 128 < 32:
            revert with 0, 34
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(stor8[idx].field_1 % 128) + 32
        mem[_20] = stor8[idx].field_1 % 128
        if bool(stor8[idx].field_0):
            if bool(stor8[idx].field_0) == uint255(stor8[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor8[idx].field_0):
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor8[idx].field_0) * 0.5:
                mem[_20 + 32] = 256 * Mask(248, 0, stor8[idx].field_8)
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(8) + idx
            mem[_20 + 32] = stor8[idx].field_0
            t = _20 + 32
            u = sha3(mem[0])
            while _20 + (uint255(stor8[u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _20
            t = t + 32
            u = u + 1
            continue 
        if bool(stor8[idx].field_0) == stor8[idx].field_1 % 128 < 32:
            revert with 0, 34
        if stor8[idx].field_1 % 128:
            if 31 >= stor8[idx].field_1 % 128:
                mem[_20 + 32] = 256 * Mask(248, 0, stor8[idx].field_8)
            else:
                mem[0] = sha3(8) + idx
                mem[_20 + 32] = stor8[idx].field_0
                t = _20 + 32
                u = sha3(mem[0])
                while _20 + stor8[idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _20
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    t = 0
    s = 128
    u = mem[64] + (32 * mem[96]) + 64
    v = mem[64] + 64
    while t < _17:
        mem[v] = u + -_16 - 64
        _28 = mem[s]
        _29 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        idx = 0
        while idx < _29:
            mem[idx + u + 32] = mem[idx + _28 + 32]
            idx = idx + 32
            continue 
        if ceil32(_29) > _29:
            mem[_29 + u + 32] = 0
        t = t + 1
        s = s + 32
        u = ceil32(_29) + u + 32
        v = v + 32
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function mintCandyTraitValsGet() {
    mem[64] = (32 * stor11.length) + 128
    mem[96] = stor11.length
    s = 128
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        if bool(stor11[idx].field_0):
            if bool(stor11[idx].field_0) == uint255(stor11[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _18 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor11[idx].field_0) * 0.5) + 32
            mem[_18] = uint255(stor11[idx].field_0) * 0.5
            if bool(stor11[idx].field_0):
                if bool(stor11[idx].field_0) == uint255(stor11[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor11[idx].field_0):
                    if 31 >= uint255(stor11[idx].field_0) * 0.5:
                        mem[_18 + 32] = 256 * Mask(248, 0, stor11[idx].field_8)
                    else:
                        mem[0] = sha3(11) + idx
                        mem[_18 + 32] = stor11[idx].field_0
                        t = _18 + 32
                        u = sha3(mem[0])
                        while _18 + (uint255(stor11[idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor11[idx].field_0) == stor11[idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor11[idx].field_1 % 128:
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor11[idx].field_1 % 128:
                mem[_18 + 32] = 256 * Mask(248, 0, stor11[idx].field_8)
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(11) + idx
            mem[_18 + 32] = stor11[idx].field_0
            t = _18 + 32
            u = sha3(mem[0])
            while _18 + stor11[u].field_1 % 128 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _18
            t = t + 32
            u = u + 1
            continue 
        if bool(stor11[idx].field_0) == stor11[idx].field_1 % 128 < 32:
            revert with 0, 34
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(stor11[idx].field_1 % 128) + 32
        mem[_20] = stor11[idx].field_1 % 128
        if bool(stor11[idx].field_0):
            if bool(stor11[idx].field_0) == uint255(stor11[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor11[idx].field_0):
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor11[idx].field_0) * 0.5:
                mem[_20 + 32] = 256 * Mask(248, 0, stor11[idx].field_8)
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(11) + idx
            mem[_20 + 32] = stor11[idx].field_0
            t = _20 + 32
            u = sha3(mem[0])
            while _20 + (uint255(stor11[u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _20
            t = t + 32
            u = u + 1
            continue 
        if bool(stor11[idx].field_0) == stor11[idx].field_1 % 128 < 32:
            revert with 0, 34
        if stor11[idx].field_1 % 128:
            if 31 >= stor11[idx].field_1 % 128:
                mem[_20 + 32] = 256 * Mask(248, 0, stor11[idx].field_8)
            else:
                mem[0] = sha3(11) + idx
                mem[_20 + 32] = stor11[idx].field_0
                t = _20 + 32
                u = sha3(mem[0])
                while _20 + stor11[idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _20
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    t = 0
    s = 128
    u = mem[64] + (32 * mem[96]) + 64
    v = mem[64] + 64
    while t < _17:
        mem[v] = u + -_16 - 64
        _28 = mem[s]
        _29 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        idx = 0
        while idx < _29:
            mem[idx + u + 32] = mem[idx + _28 + 32]
            idx = idx + 32
            continue 
        if ceil32(_29) > _29:
            mem[_29 + u + 32] = 0
        t = t + 1
        s = s + 32
        u = ceil32(_29) + u + 32
        v = v + 32
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function trickOrTreat(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6:
        revert with 0, 'Pausable: paused'
    require Mask(1, 1, uint256(stor12))
    if 1 > -uint16(mintNextId.length.field_16) + 65535:
        revert with 0, 17
    require uint16(uint16(mintNextId.length.field_16) + 1) <= 10000
    if not ownerOf[arg1 << 240]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1 << 240] == msg.sender
    require not tokenUsed[arg1 << 240]
    if 1 == bool(sha3(block.difficulty, block.timestamp, msg.sender, arg1)):
        require uint16(mintNextId.length.field_16) < 10000
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[uint16(stor13.length.field_16) or 65536]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        ownerOf[uint16(stor13.length.field_16) or 65536] = msg.sender
        emit Transfer(0, msg.sender, uint16(mintNextId.length.field_16) or 65536);
        if ext_code.size(msg.sender):
            require ext_code.size(msg.sender)
            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, 0, 0, uint16(mintNextId.length.field_16), 128, 0
            if not ext_call.success:
                if not return_data.size:
                    revert with block.difficulty, block.timestamp, msg.sender, arg1
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if uint16(mintNextId.length.field_16) >= 10000:
            revert with 0, 50
        stor639[stor13.length.field_20 % 4096] = uint16(mintNextId.length.field_16) * 256^(2 * mintNextId.length.field_16 % 16) or !(65535 * 256^(2 * mintNextId.length.field_16 % 16)) and stor639[stor13.length.field_20 % 4096]
        if uint16(mintNextId.length.field_16) == 65535:
            revert with 0, 17
        uint16(mintNextId.length.field_16) = uint16(uint16(mintNextId.length.field_16) + 1)
    if Mask(1, 2, uint256(stor12)):
        if 1 > -uint16(mintNextId.length.field_16) + 65535:
            revert with 0, 17
        require uint16(uint16(mintNextId.length.field_16) + 1) <= 10000
        require uint16(mintNextId.length.field_16) < 10000
        require Mask(1, 2, uint256(stor12))
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[uint16(stor13.length.field_16) or 65536]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        ownerOf[uint16(stor13.length.field_16) or 65536] = msg.sender
        emit Transfer(0, msg.sender, uint16(mintNextId.length.field_16) or 65536);
        if ext_code.size(msg.sender):
            require ext_code.size(msg.sender)
            call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, 0, 0, uint16(mintNextId.length.field_16), 128, 0
            if not ext_call.success:
                if not return_data.size:
                    revert with block.difficulty, block.timestamp, msg.sender, arg1
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if uint16(mintNextId.length.field_16) >= 10000:
            revert with 0, 50
        stor639[stor13.length.field_20 % 4096] = !(65535 * 256^(2 * mintNextId.length.field_16 % 16)) and stor639[stor13.length.field_20 % 4096]
        if uint16(mintNextId.length.field_16) == 65535:
            revert with 0, 17
        uint16(mintNextId.length.field_16) = uint16(uint16(mintNextId.length.field_16) + 1)
    tokenUsed[arg1 << 240] = sha3(block.difficulty, block.timestamp, msg.sender, arg1)
}

function mintPumpkinTraitValsGet() {
    mem[64] = (32 * stor9.length) + 128
    mem[96] = stor9.length
    s = 128
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        _20 = mem[64]
        mem[64] = mem[64] + (32 * stor9[idx].field_0) + 32
        mem[_20] = stor9[idx].field_0
        t = _20 + 32
        u = 0
        while u < stor9[idx].field_0:
            mem[0] = sha3(9) + idx
            if bool(stor9[idx + u].field_0):
                if bool(stor9[idx + u].field_0) == uint255(stor9[idx + u].field_0) * 0.5 < 32:
                    revert with 0, 34
                _42 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor9[idx + u].field_0) * 0.5) + 32
                mem[_42] = uint255(stor9[idx + u].field_0) * 0.5
                if bool(stor9[idx + u].field_0):
                    if bool(stor9[idx + u].field_0) == uint255(stor9[idx + u].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[idx + u].field_0):
                        if 31 >= uint255(stor9[idx + u].field_0) * 0.5:
                            mem[_42 + 32] = 256 * Mask(248, 0, stor9[idx + u].field_8)
                        else:
                            mem[0] = sha3(sha3(9) + idx) + u
                            mem[_42 + 32] = stor9[idx + u].field_0
                            s = _42 + 32
                            v = sha3(mem[0])
                            while _42 + (uint255(stor9[idx + u].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[v].field_0
                                s = s + 32
                                v = v + 1
                                continue 
                    mem[t] = _42
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor9[idx + u].field_0) == stor9[idx + u].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor9[idx + u].field_1 % 128:
                    mem[t] = _42
                    t = t + 32
                    u = u + 1
                    continue 
                if 31 >= stor9[idx + u].field_1 % 128:
                    mem[_42 + 32] = 256 * Mask(248, 0, stor9[idx + u].field_8)
                    mem[t] = _42
                    t = t + 32
                    u = u + 1
                    continue 
                mem[0] = sha3(sha3(9) + idx) + u
                mem[_42 + 32] = stor9[idx + u].field_0
                s = _42 + 32
                t = sha3(mem[0])
                while _42 + stor9[idx + t].field_1 % 128 > s:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                mem[s] = _42
                s = s + 32
                t = t + 1
                continue 
            if bool(stor9[idx + u].field_0) == stor9[idx + u].field_1 % 128 < 32:
                revert with 0, 34
            _43 = mem[64]
            mem[64] = mem[64] + ceil32(stor9[idx + u].field_1 % 128) + 32
            mem[_43] = stor9[idx + u].field_1 % 128
            if bool(stor9[idx + u].field_0):
                if bool(stor9[idx + u].field_0) == uint255(stor9[idx + u].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor9[idx + u].field_0):
                    mem[t] = _43
                    t = t + 32
                    u = u + 1
                    continue 
                if 31 >= uint255(stor9[idx + u].field_0) * 0.5:
                    mem[_43 + 32] = 256 * Mask(248, 0, stor9[idx + u].field_8)
                    mem[t] = _43
                    t = t + 32
                    u = u + 1
                    continue 
                mem[0] = sha3(sha3(9) + idx) + u
                mem[_43 + 32] = stor9[idx + u].field_0
                s = _43 + 32
                t = sha3(mem[0])
                while _43 + (uint255(stor9[idx + t].field_0) * 0.5) > s:
                    mem[s + 32] = stor1[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                mem[s] = _43
                s = s + 32
                t = t + 1
                continue 
            if bool(stor9[idx + u].field_0) == stor9[idx + u].field_1 % 128 < 32:
                revert with 0, 34
            if stor9[idx + u].field_1 % 128:
                if 31 >= stor9[idx + u].field_1 % 128:
                    mem[_43 + 32] = 256 * Mask(248, 0, stor9[idx + u].field_8)
                else:
                    mem[0] = sha3(sha3(9) + idx) + u
                    mem[_43 + 32] = stor9[idx + u].field_0
                    s = _43 + 32
                    v = sha3(mem[0])
                    while _43 + stor9[idx + u].field_1 % 128 > s:
                        mem[s + 32] = stor1[v].field_0
                        s = s + 32
                        v = v + 1
                        continue 
            mem[t] = _43
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _20
        s = s + 32
        idx = idx + 1
        continue 
    _21 = mem[64]
    mem[mem[64]] = 32
    _22 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _22:
        mem[t] = u + -_21 - 64
        _36 = mem[s]
        _39 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        w = _36 + 32
        x = u + (32 * _39) + 32
        y = u + 32
        while v < _39:
            mem[y] = x + -u - 32
            _49 = mem[w]
            _50 = mem[mem[w]]
            mem[x] = mem[mem[w]]
            idx = 0
            while idx < _50:
                mem[idx + x + 32] = mem[idx + _49 + 32]
                idx = idx + 32
                continue 
            if ceil32(_50) > _50:
                mem[_50 + x + 32] = 0
            v = v + 1
            w = w + 32
            x = ceil32(_50) + x + 32
            y = y + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = x
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function mintPumpkinTraitVals(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 < stor9.length
    require arg2 < stor9[arg1].field_0
    if bool(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0):
        if bool(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) == uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0):
            if bool(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) == uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0):
                if 31 < uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5:
                    mem[128] = stor[sha3(('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3(('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0), data=mem[128 len ceil32(uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_8)
        else:
            if bool(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) == stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128 < 32:
                revert with 0, 34
            if stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128:
                if 31 < stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128:
                    mem[128] = stor[sha3(('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2)].field_0
                    idx = 128
                    s = 0
                    while stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3(('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0), data=mem[128 len ceil32(uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_8)
        mem[ceil32(uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5) + 192 len ceil32(uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5)]
        if ceil32(uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5) > uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5:
            mem[(uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5) + ceil32(uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0), data=mem[128 len ceil32(uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5)]), 
    if bool(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) == stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0):
        if bool(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) == uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0):
            if 31 < uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5:
                mem[128] = stor[sha3(('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2)].field_0
                idx = 128
                s = 0
                while (uint255(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3(('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0 % 128, data=mem[128 len ceil32(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128)]), 
            mem[128] = 256 * Mask(248, 0, stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_8)
    else:
        if bool(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0) == stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128 < 32:
            revert with 0, 34
        if stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128:
            if 31 < stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128:
                mem[128] = stor[sha3(('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2)].field_0
                idx = 128
                s = 0
                while stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3(('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0 % 128, data=mem[128 len ceil32(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128)]), 
            mem[128] = 256 * Mask(248, 0, stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_8)
    mem[ceil32(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128) + 192 len ceil32(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128)] = mem[128 len ceil32(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128)]
    if ceil32(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128) > stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128:
        mem[stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128 + ceil32(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128) + 192] = 0
    return Array(len=stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_0 % 128, data=mem[128 len ceil32(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128)], mem[(2 * ceil32(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128)) + 192 len 2 * ceil32(stor[('array', ('param', 'arg1'), ('name', 'stor9', 9)) + arg2].field_1 % 128)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    require ownerOf[arg1]
    require arg1 < 262144
    mem[96] = 86
    mem[128 len 86] = 0x2f68747470733a2f2f70756d706b696e732e6d7970696e6174612e636c6f75642f697066732f516d657844695a6f53414e766b6b33655352626a47367256536b434751416665336538376b723638476a483155672f34
    if Mask(2, 16, arg1) >> 16 >= 2:
        revert with 0, 50
    if uint16(arg1) >= 10000:
        revert with 0, 50
    if not stor((Mask(12, 4, arg1) >> 4) + (625 * Mask(2, 16, arg1) >> 16) + 14)[uint8(arg1)]:
        if Mask(2, 16, arg1) >> 16:
            mem[448 len 96] = 0xfe68747470733a2f2f70756d706b696e732e6d7970696e6174612e636c6f75642f697066732f516d63504c444e72507946423146656b4a44634a784d6f6e65504c3775544d446339673670566467726a536946352f31, mem[406 len 10]
            mem[534] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[535] = 0x2d632e6a736f6e00000000000000000000000000000000000000000000000000
            mem[542] = 32
            mem[574] = mem[416]
            mem[606 len ceil32(mem[416])] = mem[448 len ceil32(mem[416])]
            if ceil32(mem[416]) > mem[416]:
                mem[mem[416] + 606] = 0
        else:
            mem[448 len 96] = 0x2f68747470733a2f2f70756d706b696e732e6d7970696e6174612e636c6f75642f697066732f516d657844695a6f53414e766b6b33655352626a47367256536b434751416665336538376b723638476a483155672f34, mem[214 len 10]
            mem[534] = 0x3000000000000000000000000000000000000000000000000000000000000000
            if not tokenUsed[arg1]:
                mem[535] = 0x2d6e2e6a736f6e00000000000000000000000000000000000000000000000000
            else:
                mem[535] = 0x2d792e6a736f6e00000000000000000000000000000000000000000000000000
            mem[542] = 32
            mem[574] = mem[416]
            mem[606 len ceil32(mem[416])] = mem[448 len ceil32(mem[416])]
            if ceil32(mem[416]) > mem[416]:
                mem[mem[416] + 606] = 0
        return Array(len=mem[416], data=mem[606 len ceil32(mem[416])])
    s = 0
    idx = stor((Mask(12, 4, arg1) >> 4) + (625 * Mask(2, 16, arg1) >> 16) + 14)[uint8(arg1)]
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[224] = s
    mem[64] = ceil32(s) + 256
    if not s:
        t = s
        idx = stor((Mask(12, 4, arg1) >> 4) + (625 * Mask(2, 16, arg1) >> 16) + 14)[uint8(arg1)]
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[224]:
                revert with 0, 50
            mem[t + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _385 = mem[64]
        mem[64] = mem[64] + 128
        mem[_385] = 86
        mem[_385 + 32 len 86] = 0xfe68747470733a2f2f70756d706b696e732e6d7970696e6174612e636c6f75642f697066732f516d63504c444e72507946423146656b4a44634a784d6f6e65504c3775544d446339673670566467726a536946352f31
        if Mask(2, 16, arg1) >> 16:
            _387 = mem[64]
            mem[mem[64] + 32 len 96] = 0xfe68747470733a2f2f70756d706b696e732e6d7970696e6174612e636c6f75642f697066732f516d63504c444e72507946423146656b4a44634a784d6f6e65504c3775544d446339673670566467726a536946352f31, mem[_385 + 118 len 10]
            mem[mem[64] + 118] = 0
            _668 = mem[224]
            mem[mem[64] + 118 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            mem[mem[64] + _668 + 118] = 0x2d632e6a736f6e00000000000000000000000000000000000000000000000000
            if ceil32(_668) <= _668:
                _873 = mem[64]
                mem[64] = mem[64] + _668 + 125
                mem[_387 + _668 + 125] = 32
                _921 = mem[_873]
                mem[_387 + _668 + 157] = mem[_873]
                mem[_387 + _668 + 189 len ceil32(_921)] = mem[_873 + 32 len ceil32(_921)]
                if ceil32(_921) > _921:
                    mem[_921 + _387 + _668 + 189] = 0
                return 32, mem[_387 + _668 + 157 len ceil32(_921) + 32]
            _874 = mem[64]
            mem[64] = mem[64] + _668 + 125
            mem[_387 + _668 + 125] = 32
            _922 = mem[_874]
            mem[_387 + _668 + 157] = mem[_874]
            mem[_387 + _668 + 189 len ceil32(_922)] = mem[_874 + 32 len ceil32(_922)]
            if ceil32(_922) > _922:
                mem[_922 + _387 + _668 + 189] = 0
            return 32, mem[_387 + _668 + 157 len ceil32(_922) + 32]
        mem[0] = arg1
        mem[32] = 1264
        if not tokenUsed[arg1]:
            _392 = mem[64]
            _409 = mem[96]
            mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _669 = mem[224]
                mem[mem[64] + mem[96] + 32 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                mem[_392 + _409 + _669 + 32] = 0x2d6e2e6a736f6e00000000000000000000000000000000000000000000000000
                if ceil32(_669) <= _669:
                    _875 = mem[64]
                    mem[64] = _392 + _409 + _669 + 39
                    mem[_392 + _409 + _669 + 39] = 32
                    _923 = mem[_875]
                    mem[_392 + _409 + _669 + 71] = mem[_875]
                    mem[_392 + _409 + _669 + 103 len ceil32(_923)] = mem[_875 + 32 len ceil32(_923)]
                    if ceil32(_923) > _923:
                        mem[_923 + _392 + _409 + _669 + 103] = 0
                    return 32, mem[_392 + _409 + _669 + 71 len ceil32(_923) + 32]
                _876 = mem[64]
                mem[64] = _392 + _409 + _669 + 39
                mem[_392 + _409 + _669 + 39] = 32
                _924 = mem[_876]
                mem[_392 + _409 + _669 + 71] = mem[_876]
                mem[_392 + _409 + _669 + 103 len ceil32(_924)] = mem[_876 + 32 len ceil32(_924)]
                if ceil32(_924) > _924:
                    mem[_924 + _392 + _409 + _669 + 103] = 0
                return 32, mem[_392 + _409 + _669 + 71 len ceil32(_924) + 32]
            mem[mem[96] + mem[64] + 32] = 0
            _670 = mem[224]
            mem[_392 + _409 + 32 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            mem[_392 + _409 + _670 + 32] = 0x2d6e2e6a736f6e00000000000000000000000000000000000000000000000000
            if ceil32(_670) <= _670:
                _877 = mem[64]
                mem[64] = _392 + _409 + _670 + 39
                mem[_392 + _409 + _670 + 39] = 32
                _925 = mem[_877]
                mem[_392 + _409 + _670 + 71] = mem[_877]
                mem[_392 + _409 + _670 + 103 len ceil32(_925)] = mem[_877 + 32 len ceil32(_925)]
                if ceil32(_925) > _925:
                    mem[_925 + _392 + _409 + _670 + 103] = 0
                return 32, mem[_392 + _409 + _670 + 71 len ceil32(_925) + 32]
            _878 = mem[64]
            mem[64] = _392 + _409 + _670 + 39
            mem[_392 + _409 + _670 + 39] = 32
            _926 = mem[_878]
            mem[_392 + _409 + _670 + 71] = mem[_878]
            mem[_392 + _409 + _670 + 103 len ceil32(_926)] = mem[_878 + 32 len ceil32(_926)]
            if ceil32(_926) > _926:
                mem[_926 + _392 + _409 + _670 + 103] = 0
            return 32, mem[_392 + _409 + _670 + 71 len ceil32(_926) + 32]
        _393 = mem[64]
        _410 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _671 = mem[224]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            mem[_393 + _410 + _671 + 32] = 0x2d792e6a736f6e00000000000000000000000000000000000000000000000000
            if ceil32(_671) <= _671:
                _879 = mem[64]
                mem[64] = _393 + _410 + _671 + 39
                mem[_393 + _410 + _671 + 39] = 32
                _927 = mem[_879]
                mem[_393 + _410 + _671 + 71] = mem[_879]
                mem[_393 + _410 + _671 + 103 len ceil32(_927)] = mem[_879 + 32 len ceil32(_927)]
                if ceil32(_927) > _927:
                    mem[_927 + _393 + _410 + _671 + 103] = 0
                return 32, mem[_393 + _410 + _671 + 71 len ceil32(_927) + 32]
            _880 = mem[64]
            mem[64] = _393 + _410 + _671 + 39
            mem[_393 + _410 + _671 + 39] = 32
            _928 = mem[_880]
            mem[_393 + _410 + _671 + 71] = mem[_880]
            mem[_393 + _410 + _671 + 103 len ceil32(_928)] = mem[_880 + 32 len ceil32(_928)]
            if ceil32(_928) > _928:
                mem[_928 + _393 + _410 + _671 + 103] = 0
            return 32, mem[_393 + _410 + _671 + 71 len ceil32(_928) + 32]
        mem[mem[96] + mem[64] + 32] = 0
        _672 = mem[224]
        mem[_393 + _410 + 32 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
        mem[_393 + _410 + _672 + 32] = 0x2d792e6a736f6e00000000000000000000000000000000000000000000000000
        if ceil32(_672) <= _672:
            _881 = mem[64]
            mem[64] = _393 + _410 + _672 + 39
            mem[_393 + _410 + _672 + 39] = 32
            _929 = mem[_881]
            mem[_393 + _410 + _672 + 71] = mem[_881]
            mem[_393 + _410 + _672 + 103 len ceil32(_929)] = mem[_881 + 32 len ceil32(_929)]
            if ceil32(_929) > _929:
                mem[_929 + _393 + _410 + _672 + 103] = 0
            return 32, mem[_393 + _410 + _672 + 71 len ceil32(_929) + 32]
        _882 = mem[64]
        mem[64] = _393 + _410 + _672 + 39
        mem[_393 + _410 + _672 + 39] = 32
        _930 = mem[_882]
        mem[_393 + _410 + _672 + 71] = mem[_882]
        mem[_393 + _410 + _672 + 103 len ceil32(_930)] = mem[_882 + 32 len ceil32(_930)]
        if ceil32(_930) > _930:
            mem[_930 + _393 + _410 + _672 + 103] = 0
        return 32, mem[_393 + _410 + _672 + 71 len ceil32(_930) + 32]
    mem[256 len s] = call.data[calldata.size len s]
    t = s
    idx = stor((Mask(12, 4, arg1) >> 4) + (625 * Mask(2, 16, arg1) >> 16) + 14)[uint8(arg1)]
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[224]:
            revert with 0, 50
        mem[t + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _386 = mem[64]
    mem[64] = mem[64] + 128
    mem[_386] = 86
    mem[_386 + 32 len 86] = 0xfe68747470733a2f2f70756d706b696e732e6d7970696e6174612e636c6f75642f697066732f516d63504c444e72507946423146656b4a44634a784d6f6e65504c3775544d446339673670566467726a536946352f31
    if Mask(2, 16, arg1) >> 16:
        _389 = mem[64]
        mem[mem[64] + 32 len 96] = 0xfe68747470733a2f2f70756d706b696e732e6d7970696e6174612e636c6f75642f697066732f516d63504c444e72507946423146656b4a44634a784d6f6e65504c3775544d446339673670566467726a536946352f31, mem[_386 + 118 len 10]
        mem[mem[64] + 118] = 0
        _674 = mem[224]
        mem[mem[64] + 118 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
        mem[mem[64] + _674 + 118] = 0x2d632e6a736f6e00000000000000000000000000000000000000000000000000
        if ceil32(_674) <= _674:
            _885 = mem[64]
            mem[64] = mem[64] + _674 + 125
            mem[_389 + _674 + 125] = 32
            _933 = mem[_885]
            mem[_389 + _674 + 157] = mem[_885]
            mem[_389 + _674 + 189 len ceil32(_933)] = mem[_885 + 32 len ceil32(_933)]
            if ceil32(_933) > _933:
                mem[_933 + _389 + _674 + 189] = 0
            return 32, mem[_389 + _674 + 157 len ceil32(_933) + 32]
        _886 = mem[64]
        mem[64] = mem[64] + _674 + 125
        mem[_389 + _674 + 125] = 32
        _934 = mem[_886]
        mem[_389 + _674 + 157] = mem[_886]
        mem[_389 + _674 + 189 len ceil32(_934)] = mem[_886 + 32 len ceil32(_934)]
        if ceil32(_934) > _934:
            mem[_934 + _389 + _674 + 189] = 0
        return 32, mem[_389 + _674 + 157 len ceil32(_934) + 32]
    mem[0] = arg1
    mem[32] = 1264
    if not tokenUsed[arg1]:
        _395 = mem[64]
        _411 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _675 = mem[224]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            mem[_395 + _411 + _675 + 32] = 0x2d6e2e6a736f6e00000000000000000000000000000000000000000000000000
            if ceil32(_675) <= _675:
                _887 = mem[64]
                mem[64] = _395 + _411 + _675 + 39
                mem[_395 + _411 + _675 + 39] = 32
                _935 = mem[_887]
                mem[_395 + _411 + _675 + 71] = mem[_887]
                mem[_395 + _411 + _675 + 103 len ceil32(_935)] = mem[_887 + 32 len ceil32(_935)]
                if ceil32(_935) > _935:
                    mem[_935 + _395 + _411 + _675 + 103] = 0
                return 32, mem[_395 + _411 + _675 + 71 len ceil32(_935) + 32]
            _888 = mem[64]
            mem[64] = _395 + _411 + _675 + 39
            mem[_395 + _411 + _675 + 39] = 32
            _936 = mem[_888]
            mem[_395 + _411 + _675 + 71] = mem[_888]
            mem[_395 + _411 + _675 + 103 len ceil32(_936)] = mem[_888 + 32 len ceil32(_936)]
            if ceil32(_936) > _936:
                mem[_936 + _395 + _411 + _675 + 103] = 0
            return 32, mem[_395 + _411 + _675 + 71 len ceil32(_936) + 32]
        mem[mem[96] + mem[64] + 32] = 0
        _676 = mem[224]
        mem[_395 + _411 + 32 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
        mem[_395 + _411 + _676 + 32] = 0x2d6e2e6a736f6e00000000000000000000000000000000000000000000000000
        if ceil32(_676) <= _676:
            _889 = mem[64]
            mem[64] = _395 + _411 + _676 + 39
            mem[_395 + _411 + _676 + 39] = 32
            _937 = mem[_889]
            mem[_395 + _411 + _676 + 71] = mem[_889]
            mem[_395 + _411 + _676 + 103 len ceil32(_937)] = mem[_889 + 32 len ceil32(_937)]
            if ceil32(_937) > _937:
                mem[_937 + _395 + _411 + _676 + 103] = 0
            return 32, mem[_395 + _411 + _676 + 71 len ceil32(_937) + 32]
        _890 = mem[64]
        mem[64] = _395 + _411 + _676 + 39
        mem[_395 + _411 + _676 + 39] = 32
        _938 = mem[_890]
        mem[_395 + _411 + _676 + 71] = mem[_890]
        mem[_395 + _411 + _676 + 103 len ceil32(_938)] = mem[_890 + 32 len ceil32(_938)]
        if ceil32(_938) > _938:
            mem[_938 + _395 + _411 + _676 + 103] = 0
        return 32, mem[_395 + _411 + _676 + 71 len ceil32(_938) + 32]
    _396 = mem[64]
    _412 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _677 = mem[224]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
        mem[_396 + _412 + _677 + 32] = 0x2d792e6a736f6e00000000000000000000000000000000000000000000000000
        if ceil32(_677) <= _677:
            _891 = mem[64]
            mem[64] = _396 + _412 + _677 + 39
            mem[_396 + _412 + _677 + 39] = 32
            _939 = mem[_891]
            mem[_396 + _412 + _677 + 71] = mem[_891]
            mem[_396 + _412 + _677 + 103 len ceil32(_939)] = mem[_891 + 32 len ceil32(_939)]
            if ceil32(_939) > _939:
                mem[_939 + _396 + _412 + _677 + 103] = 0
            return 32, mem[_396 + _412 + _677 + 71 len ceil32(_939) + 32]
        _892 = mem[64]
        mem[64] = _396 + _412 + _677 + 39
        mem[_396 + _412 + _677 + 39] = 32
        _940 = mem[_892]
        mem[_396 + _412 + _677 + 71] = mem[_892]
        mem[_396 + _412 + _677 + 103 len ceil32(_940)] = mem[_892 + 32 len ceil32(_940)]
        if ceil32(_940) > _940:
            mem[_940 + _396 + _412 + _677 + 103] = 0
        return 32, mem[_396 + _412 + _677 + 71 len ceil32(_940) + 32]
    mem[mem[96] + mem[64] + 32] = 0
    _678 = mem[224]
    mem[_396 + _412 + 32 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
    mem[_396 + _412 + _678 + 32] = 0x2d792e6a736f6e00000000000000000000000000000000000000000000000000
    if ceil32(_678) <= _678:
        _893 = mem[64]
        mem[64] = _396 + _412 + _678 + 39
        mem[_396 + _412 + _678 + 39] = 32
        _941 = mem[_893]
        mem[_396 + _412 + _678 + 71] = mem[_893]
        mem[_396 + _412 + _678 + 103 len ceil32(_941)] = mem[_893 + 32 len ceil32(_941)]
        if ceil32(_941) > _941:
            mem[_941 + _396 + _412 + _678 + 103] = 0
        return 32, mem[_396 + _412 + _678 + 71 len ceil32(_941) + 32]
    _894 = mem[64]
    mem[64] = _396 + _412 + _678 + 39
    mem[_396 + _412 + _678 + 39] = 32
    _942 = mem[_894]
    mem[_396 + _412 + _678 + 71] = mem[_894]
    mem[_396 + _412 + _678 + 103 len ceil32(_942)] = mem[_894 + 32 len ceil32(_942)]
    if ceil32(_942) > _942:
        mem[_942 + _396 + _412 + _678 + 103] = 0
    return 32, mem[_396 + _412 + _678 + 71 len ceil32(_942) + 32]
}

function getTokensByOwner(address arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < 2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    require balanceOf[address(arg1)] < 40000
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = arg1
    mem[32] = 3
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = balanceOf[address(arg1)]
    mem[64] = (32 * balanceOf[address(arg1)]) + 128
    if not balanceOf[address(arg1)]:
        if arg2 >= 2:
            revert with 0, 50
        if uint16(var50003) >= uint16(mintNextId[uint8(arg2)].field_0):
            mem[(32 * balanceOf[address(arg1)]) + 128] = 32
            mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
            idx = 0
            s = 128
            t = (32 * balanceOf[address(arg1)]) + 192
            while idx < mem[96]:
                _177 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_177 + 44 len 20]
                mem[t + 64] = mem[_177 + 64]
                mem[t + 96] = mem[_177 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len (162 * balanceOf[address(arg1)]) + -mem[64] + 192
        mem[0] = var54001
        mem[32] = 2
        if not ownerOf[var54001]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if address(var58001) == arg1:
            if var60002 < balanceOf[address(arg1)]:
                mem[mem[(32 * var60002) + 128]] = uint16(var60001)
                s = var60002
                t = uint16(var60001)
                u = var60001
                idx = var60002
                while idx < balanceOf[address(arg1)]:
                    mem[mem[(32 * idx) + 128] + 32] = arg1
                    if arg2 >= 2:
                        revert with 0, 50
                    if uint16(u) >= 10000:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + 128] + 64] = stor((Mask(12, 4, u) >> 4) + (625 * arg2) + 14)[uint8(u)]
                    if arg2:
                        if idx == -1:
                            revert with 0, 17
                        if uint16(s) == 65535:
                            revert with 0, 17
                        if arg2 >= 2:
                            revert with 0, 50
                        if uint16(var70003) >= uint16(mintNextId[uint8(arg2)].field_0):
                            _2564 = mem[64]
                            mem[mem[64]] = 32
                            _2585 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            u = 128
                            v = mem[64] + 64
                            while idx < _2585:
                                _2986 = mem[u]
                                mem[v] = mem[mem[u]]
                                mem[v + 32] = mem[_2986 + 44 len 20]
                                mem[v + 64] = mem[_2986 + 64]
                                mem[v + 96] = mem[_2986 + 96]
                                mem[mem[(32 * s) + 128]] = t
                                idx = idx + 1
                                u = u + 32
                                v = v + 128
                                continue 
                            return memory
                              from mem[64]
                               len _2564 + (128 * _2585) + -mem[64] + 64
                        mem[0] = var74001
                        mem[32] = 2
                        if not ownerOf[var74001]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        if address(var78001) != arg1:
                            # nil
                        else:
                            if idx + 1 >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * idx + 2) + 128]] = uint16(var78003)
                            s = idx + 1
                            t = uint16(var78003)
                            u = var78003
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = uint16(u)
                        mem[32] = 1264
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[mem[(32 * idx) + 128] + 96] = tokenUsed[u << 240]
                        if idx == -1:
                            revert with 0, 17
                        if uint16(var64001) == 65535:
                            revert with 0, 17
                        if arg2 >= 2:
                            revert with 0, 50
                        if uint16(var72003) >= uint16(mintNextId[uint8(arg2)].field_0):
                            _2566 = mem[64]
                            mem[mem[64]] = 32
                            _2587 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            u = 128
                            v = mem[64] + 64
                            while idx < _2587:
                                _2992 = mem[u]
                                mem[v] = mem[mem[u]]
                                mem[v + 32] = mem[_2992 + 44 len 20]
                                mem[v + 64] = mem[_2992 + 64]
                                mem[v + 96] = mem[_2992 + 96]
                                mem[mem[(32 * s) + 128]] = t
                                idx = idx + 1
                                u = u + 32
                                v = v + 128
                                continue 
                            return memory
                              from mem[64]
                               len _2566 + (128 * _2587) + -mem[64] + 64
                        mem[0] = var76001
                        mem[32] = 2
                        if not ownerOf[var76001]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        if address(var80001) != arg1:
                            # nil
                        else:
                            if idx + 1 >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * idx + 2) + 128]] = uint16(var80003)
                            s = idx + 1
                            t = uint16(var80003)
                            u = var80003
                            idx = idx + 1
                            continue 
            revert with 0, 50
        if uint16(var62001) == 65535:
            revert with 0, 17
        if arg2 >= 2:
            revert with 0, 50
        if uint16(var70003) >= uint16(mintNextId[uint8(arg2)].field_0):
            mem[(32 * balanceOf[address(arg1)]) + 128] = 32
            mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
            idx = 0
            s = 128
            t = (32 * balanceOf[address(arg1)]) + 192
            while idx < mem[96]:
                _2223 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2223 + 44 len 20]
                mem[t + 64] = mem[_2223 + 64]
                mem[t + 96] = mem[_2223 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len (162 * balanceOf[address(arg1)]) + -mem[64] + 192
        if not ownerOf[var74001]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if address(var78001) != arg1:
            if uint16(var82001) == 65535:
                revert with 0, 17
            # nil
        else:
            if var80002 >= balanceOf[address(arg1)]:
                revert with 0, 50
            if var82005 >= balanceOf[address(arg1)]:
                revert with 0, 50
            if arg2 >= 2:
                revert with 0, 50
            if uint16(var82004) >= 10000:
                revert with 0, 50
            if var82005 >= balanceOf[address(arg1)]:
                revert with 0, 50
            if arg2:
                if var82005 == -1:
                    revert with 0, 17
                # nil
            else:
                if var82005 >= balanceOf[address(arg1)]:
                    revert with 0, 50
                if var82005 == -1:
                    revert with 0, 17
                # nil
    else:
        mem[64] = (32 * balanceOf[address(arg1)]) + 256
        mem[(32 * balanceOf[address(arg1)]) + 128] = 0
        mem[(32 * balanceOf[address(arg1)]) + 160] = 0
        mem[(32 * balanceOf[address(arg1)]) + 192] = 0
        mem[(32 * balanceOf[address(arg1)]) + 224] = 0
        mem[var30002] = var30001
        if not var30003 - 1:
            if arg2 >= 2:
                revert with 0, 50
            if uint16(var56003) >= uint16(mintNextId[uint8(arg2)].field_0):
                mem[(32 * balanceOf[address(arg1)]) + 256] = 32
                mem[(32 * balanceOf[address(arg1)]) + 288] = balanceOf[address(arg1)]
                idx = 0
                s = 128
                t = (32 * balanceOf[address(arg1)]) + 320
                while idx < mem[96]:
                    _391 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_391 + 44 len 20]
                    mem[t + 64] = mem[_391 + 64]
                    mem[t + 96] = mem[_391 + 96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                return memory
                  from mem[64]
                   len (162 * balanceOf[address(arg1)]) + -mem[64] + 320
            mem[0] = var60001
            mem[32] = 2
            if not ownerOf[var60001]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if address(var64001) != arg1:
                if uint16(var68001) == 65535:
                    revert with 0, 17
                if arg2 >= 2:
                    revert with 0, 50
                if uint16(var76003) >= uint16(mintNextId[uint8(arg2)].field_0):
                    mem[(32 * balanceOf[address(arg1)]) + 256] = 32
                    mem[(32 * balanceOf[address(arg1)]) + 288] = balanceOf[address(arg1)]
                    idx = 0
                    s = 128
                    t = (32 * balanceOf[address(arg1)]) + 320
                    while idx < mem[96]:
                        _3006 = mem[s]
                        mem[t] = mem[mem[s]]
                        mem[t + 32] = mem[_3006 + 44 len 20]
                        mem[t + 64] = mem[_3006 + 64]
                        mem[t + 96] = mem[_3006 + 96]
                        idx = idx + 1
                        s = s + 32
                        t = t + 128
                        continue 
                    return memory
                      from mem[64]
                       len (162 * balanceOf[address(arg1)]) + -mem[64] + 320
                if not ownerOf[var80001]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if address(var84001) != arg1:
                    # nil
                else:
                    if var86002 >= balanceOf[address(arg1)]:
                        revert with 0, 50
                    # nil
            else:
                if var66002 >= balanceOf[address(arg1)]:
                    revert with 0, 50
                mem[mem[(32 * var68001) + 128]] = var68003
                if var68005 >= balanceOf[address(arg1)]:
                    revert with 0, 50
                mem[mem[(32 * var68005) + 128] + 32] = arg1
                if arg2 >= 2:
                    revert with 0, 50
                if uint16(var68004) >= 10000:
                    revert with 0, 50
                if var68005 >= balanceOf[address(arg1)]:
                    revert with 0, 50
                mem[mem[(32 * var68005) + 128] + 64] = stor((Mask(12, 4, var68004) >> 4) + (625 * arg2) + 14)[uint8(var68004)]
                if arg2:
                    if var68005 == -1:
                        revert with 0, 17
                    if uint16(var68001) == 65535:
                        revert with 0, 17
                    if arg2 >= 2:
                        revert with 0, 50
                    if uint16(var76003) < uint16(mintNextId[uint8(arg2)].field_0):
                        if not ownerOf[var80001]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        # nil
                    else:
                        mem[(32 * balanceOf[address(arg1)]) + 256] = 32
                        mem[(32 * balanceOf[address(arg1)]) + 288] = balanceOf[address(arg1)]
                        idx = 0
                        s = 128
                        t = (32 * balanceOf[address(arg1)]) + 320
                        while idx < mem[96]:
                            _3925 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_3925 + 44 len 20]
                            mem[t + 64] = mem[_3925 + 64]
                            mem[t + 96] = mem[_3925 + 96]
                            idx = idx + 1
                            s = s + 32
                            t = t + 128
                            continue 
                        return memory
                          from mem[64]
                           len (162 * balanceOf[address(arg1)]) + -mem[64] + 320
                else:
                    mem[0] = uint16(var68004)
                    mem[32] = 1264
                    if var68005 >= balanceOf[address(arg1)]:
                        revert with 0, 50
                    mem[mem[(32 * var68005) + 128] + 96] = tokenUsed[var68004 << 240]
                    if var68005 == -1:
                        revert with 0, 17
                    if uint16(var70001) == 65535:
                        revert with 0, 17
                    if arg2 >= 2:
                        revert with 0, 50
                    if uint16(var78003) < uint16(mintNextId[uint8(arg2)].field_0):
                        if not ownerOf[var82001]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        # nil
                    else:
                        mem[(32 * balanceOf[address(arg1)]) + 256] = 32
                        mem[(32 * balanceOf[address(arg1)]) + 288] = balanceOf[address(arg1)]
                        idx = 0
                        s = 128
                        t = (32 * balanceOf[address(arg1)]) + 320
                        while idx < mem[96]:
                            _3931 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_3931 + 44 len 20]
                            mem[t + 64] = mem[_3931 + 64]
                            mem[t + 96] = mem[_3931 + 96]
                            idx = idx + 1
                            s = s + 32
                            t = t + 128
                            continue 
                        return memory
                          from mem[64]
                           len (162 * balanceOf[address(arg1)]) + -mem[64] + 320
        else:
            mem[64] = (32 * balanceOf[address(arg1)]) + 384
            mem[(32 * balanceOf[address(arg1)]) + 256] = 0
            mem[(32 * balanceOf[address(arg1)]) + 288] = 0
            mem[(32 * balanceOf[address(arg1)]) + 320] = 0
            mem[(32 * balanceOf[address(arg1)]) + 352] = 0
            mem[var34002] = var34001
            if not var34003 - 1:
                if arg2 >= 2:
                    revert with 0, 50
                if uint16(var60003) >= uint16(mintNextId[uint8(arg2)].field_0):
                    mem[(32 * balanceOf[address(arg1)]) + 384] = 32
                    mem[(32 * balanceOf[address(arg1)]) + 416] = balanceOf[address(arg1)]
                    idx = 0
                    s = 128
                    t = (32 * balanceOf[address(arg1)]) + 448
                    while idx < mem[96]:
                        _701 = mem[s]
                        mem[t] = mem[mem[s]]
                        mem[t + 32] = mem[_701 + 44 len 20]
                        mem[t + 64] = mem[_701 + 64]
                        mem[t + 96] = mem[_701 + 96]
                        idx = idx + 1
                        s = s + 32
                        t = t + 128
                        continue 
                    return memory
                      from mem[64]
                       len (162 * balanceOf[address(arg1)]) + -mem[64] + 448
                mem[0] = var64001
                mem[32] = 2
                if not ownerOf[var64001]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if address(var68001) != arg1:
                    if uint16(var72001) == 65535:
                        revert with 0, 17
                    if arg2 >= 2:
                        revert with 0, 50
                    if uint16(var80003) < uint16(mintNextId[uint8(arg2)].field_0):
                        if not ownerOf[var84001]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        # nil
                    else:
                        mem[(32 * balanceOf[address(arg1)]) + 384] = 32
                        mem[(32 * balanceOf[address(arg1)]) + 416] = balanceOf[address(arg1)]
                        idx = 0
                        s = 128
                        t = (32 * balanceOf[address(arg1)]) + 448
                        while idx < mem[96]:
                            _3919 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_3919 + 44 len 20]
                            mem[t + 64] = mem[_3919 + 64]
                            mem[t + 96] = mem[_3919 + 96]
                            idx = idx + 1
                            s = s + 32
                            t = t + 128
                            continue 
                        return memory
                          from mem[64]
                           len (162 * balanceOf[address(arg1)]) + -mem[64] + 448
                else:
                    if var70002 >= balanceOf[address(arg1)]:
                        revert with 0, 50
                    mem[mem[(32 * var72001) + 128]] = var72003
                    if var72005 >= balanceOf[address(arg1)]:
                        revert with 0, 50
                    mem[mem[(32 * var72005) + 128] + 32] = arg1
                    if arg2 >= 2:
                        revert with 0, 50
                    if uint16(var72004) >= 10000:
                        revert with 0, 50
                    if var72005 >= balanceOf[address(arg1)]:
                        revert with 0, 50
                    mem[mem[(32 * var72005) + 128] + 64] = stor((Mask(12, 4, var72004) >> 4) + (625 * arg2) + 14)[uint8(var72004)]
                    if arg2:
                        if var72005 == -1:
                            revert with 0, 17
                        if uint16(var72001) == 65535:
                            revert with 0, 17
                        if arg2 >= 2:
                            revert with 0, 50
                        if uint16(var80003) < uint16(mintNextId[uint8(arg2)].field_0):
                            # nil
                        else:
                            mem[(32 * balanceOf[address(arg1)]) + 384] = 32
                            mem[(32 * balanceOf[address(arg1)]) + 416] = balanceOf[address(arg1)]
                            idx = 0
                            s = 128
                            t = (32 * balanceOf[address(arg1)]) + 448
                            while idx < mem[96]:
                                _5000 = mem[s]
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_5000 + 44 len 20]
                                mem[t + 64] = mem[_5000 + 64]
                                mem[t + 96] = mem[_5000 + 96]
                                idx = idx + 1
                                s = s + 32
                                t = t + 128
                                continue 
                            return memory
                              from mem[64]
                               len (162 * balanceOf[address(arg1)]) + -mem[64] + 448
                    else:
                        mem[0] = uint16(var72004)
                        mem[32] = 1264
                        if var72005 >= balanceOf[address(arg1)]:
                            revert with 0, 50
                        mem[mem[(32 * var72005) + 128] + 96] = tokenUsed[var72004 << 240]
                        if var72005 == -1:
                            revert with 0, 17
                        if uint16(var74001) == 65535:
                            revert with 0, 17
                        if arg2 >= 2:
                            revert with 0, 50
                        if uint16(var82003) < uint16(mintNextId[uint8(arg2)].field_0):
                            # nil
                        else:
                            mem[(32 * balanceOf[address(arg1)]) + 384] = 32
                            mem[(32 * balanceOf[address(arg1)]) + 416] = balanceOf[address(arg1)]
                            idx = 0
                            s = 128
                            t = (32 * balanceOf[address(arg1)]) + 448
                            while idx < mem[96]:
                                _5006 = mem[s]
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_5006 + 44 len 20]
                                mem[t + 64] = mem[_5006 + 64]
                                mem[t + 96] = mem[_5006 + 96]
                                idx = idx + 1
                                s = s + 32
                                t = t + 128
                                continue 
                            return memory
                              from mem[64]
                               len (162 * balanceOf[address(arg1)]) + -mem[64] + 448
            else:
                mem[64] = (32 * balanceOf[address(arg1)]) + 512
                mem[(32 * balanceOf[address(arg1)]) + 384] = 0
                mem[(32 * balanceOf[address(arg1)]) + 416] = 0
                mem[(32 * balanceOf[address(arg1)]) + 448] = 0
                mem[(32 * balanceOf[address(arg1)]) + 480] = 0
                mem[var38002] = var38001
                if not var38003 - 1:
                    if arg2 >= 2:
                        revert with 0, 50
                    if uint16(var64003) >= uint16(mintNextId[uint8(arg2)].field_0):
                        mem[(32 * balanceOf[address(arg1)]) + 512] = 32
                        mem[(32 * balanceOf[address(arg1)]) + 544] = balanceOf[address(arg1)]
                        idx = 0
                        s = 128
                        t = (32 * balanceOf[address(arg1)]) + 576
                        while idx < mem[96]:
                            _1111 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_1111 + 44 len 20]
                            mem[t + 64] = mem[_1111 + 64]
                            mem[t + 96] = mem[_1111 + 96]
                            idx = idx + 1
                            s = s + 32
                            t = t + 128
                            continue 
                        return memory
                          from mem[64]
                           len (162 * balanceOf[address(arg1)]) + -mem[64] + 576
                    mem[0] = var68001
                    mem[32] = 2
                    if not ownerOf[var68001]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if address(var72001) != arg1:
                        if uint16(var76001) == 65535:
                            revert with 0, 17
                        if arg2 >= 2:
                            revert with 0, 50
                        if uint16(var84003) < uint16(mintNextId[uint8(arg2)].field_0):
                            # nil
                        else:
                            mem[(32 * balanceOf[address(arg1)]) + 512] = 32
                            mem[(32 * balanceOf[address(arg1)]) + 544] = balanceOf[address(arg1)]
                            idx = 0
                            s = 128
                            t = (32 * balanceOf[address(arg1)]) + 576
                            while idx < mem[96]:
                                _4994 = mem[s]
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_4994 + 44 len 20]
                                mem[t + 64] = mem[_4994 + 64]
                                mem[t + 96] = mem[_4994 + 96]
                                idx = idx + 1
                                s = s + 32
                                t = t + 128
                                continue 
                            return memory
                              from mem[64]
                               len (162 * balanceOf[address(arg1)]) + -mem[64] + 576
                    else:
                        if var74002 >= balanceOf[address(arg1)]:
                            revert with 0, 50
                        if var76005 >= balanceOf[address(arg1)]:
                            revert with 0, 50
                        if arg2 >= 2:
                            revert with 0, 50
                        if uint16(var76004) >= 10000:
                            revert with 0, 50
                        if var76005 >= balanceOf[address(arg1)]:
                            revert with 0, 50
                        if arg2:
                            if var76005 == -1:
                                revert with 0, 17
                            if uint16(var76001) == 65535:
                                revert with 0, 17
                            if arg2 >= 2:
                                revert with 0, 50
                            # nil
                        else:
                            if var76005 >= balanceOf[address(arg1)]:
                                revert with 0, 50
                            if var76005 == -1:
                                revert with 0, 17
                            if uint16(var78001) == 65535:
                                revert with 0, 17
                            if arg2 >= 2:
                                revert with 0, 50
                            # nil
                else:
                    mem[64] = (32 * balanceOf[address(arg1)]) + 640
                    mem[(32 * balanceOf[address(arg1)]) + 512] = 0
                    mem[(32 * balanceOf[address(arg1)]) + 544] = 0
                    mem[(32 * balanceOf[address(arg1)]) + 576] = 0
                    mem[(32 * balanceOf[address(arg1)]) + 608] = 0
                    mem[var42002] = var42001
                    if not var42003 - 1:
                        if arg2 >= 2:
                            revert with 0, 50
                        if uint16(var68003) >= uint16(mintNextId[uint8(arg2)].field_0):
                            mem[(32 * balanceOf[address(arg1)]) + 640] = 32
                            mem[(32 * balanceOf[address(arg1)]) + 672] = balanceOf[address(arg1)]
                            idx = 0
                            s = 128
                            t = (32 * balanceOf[address(arg1)]) + 704
                            while idx < mem[96]:
                                _1611 = mem[s]
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_1611 + 44 len 20]
                                mem[t + 64] = mem[_1611 + 64]
                                mem[t + 96] = mem[_1611 + 96]
                                idx = idx + 1
                                s = s + 32
                                t = t + 128
                                continue 
                            return memory
                              from mem[64]
                               len (162 * balanceOf[address(arg1)]) + -mem[64] + 704
                        if not ownerOf[var72001]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        if address(var76001) != arg1:
                            if uint16(var80001) == 65535:
                                revert with 0, 17
                            if arg2 >= 2:
                                revert with 0, 50
                            # nil
                        else:
                            if var78002 >= balanceOf[address(arg1)]:
                                revert with 0, 50
                            if var80005 >= balanceOf[address(arg1)]:
                                revert with 0, 50
                            if arg2 >= 2:
                                revert with 0, 50
                            if uint16(var80004) >= 10000:
                                revert with 0, 50
                            if var80005 >= balanceOf[address(arg1)]:
                                revert with 0, 50
                            if arg2:
                                if var80005 == -1:
                                    revert with 0, 17
                                if uint16(var80001) == 65535:
                                    revert with 0, 17
                                # nil
                            else:
                                if var80005 >= balanceOf[address(arg1)]:
                                    revert with 0, 50
                                if var80005 == -1:
                                    revert with 0, 17
                                if uint16(var82001) == 65535:
                                    revert with 0, 17
                                # nil
                    else:
                        mem[64] = (32 * balanceOf[address(arg1)]) + 768
                        mem[(32 * balanceOf[address(arg1)]) + 640] = 0
                        mem[(32 * balanceOf[address(arg1)]) + 672] = 0
                        mem[(32 * balanceOf[address(arg1)]) + 704] = 0
                        mem[(32 * balanceOf[address(arg1)]) + 736] = 0
                        mem[var46002] = var46001
                        if not var46003 - 1:
                            if arg2 >= 2:
                                revert with 0, 50
                            if uint16(var72003) >= uint16(mintNextId[uint8(arg2)].field_0):
                                mem[(32 * balanceOf[address(arg1)]) + 768] = 32
                                mem[(32 * balanceOf[address(arg1)]) + 800] = balanceOf[address(arg1)]
                                idx = 0
                                s = 128
                                t = (32 * balanceOf[address(arg1)]) + 832
                                while idx < mem[96]:
                                    _2229 = mem[s]
                                    mem[t] = mem[mem[s]]
                                    mem[t + 32] = mem[_2229 + 44 len 20]
                                    mem[t + 64] = mem[_2229 + 64]
                                    mem[t + 96] = mem[_2229 + 96]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 128
                                    continue 
                                return memory
                                  from mem[64]
                                   len (162 * balanceOf[address(arg1)]) + -mem[64] + 832
                            if not ownerOf[var76001]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            if address(var80001) != arg1:
                                if uint16(var84001) == 65535:
                                    revert with 0, 17
                                # nil
                            else:
                                if var82002 >= balanceOf[address(arg1)]:
                                    revert with 0, 50
                                if var84005 >= balanceOf[address(arg1)]:
                                    revert with 0, 50
                                if arg2 >= 2:
                                    revert with 0, 50
                                if uint16(var84004) >= 10000:
                                    revert with 0, 50
                                if var84005 >= balanceOf[address(arg1)]:
                                    revert with 0, 50
                                if arg2:
                                    if var84005 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var84005 >= balanceOf[address(arg1)]:
                                        revert with 0, 50
                                    if var84005 == -1:
                                        revert with 0, 17
                                    # nil
                        else:
                            mem[64] = (32 * balanceOf[address(arg1)]) + 896
                            mem[(32 * balanceOf[address(arg1)]) + 768] = 0
                            mem[(32 * balanceOf[address(arg1)]) + 800] = 0
                            mem[(32 * balanceOf[address(arg1)]) + 832] = 0
                            mem[(32 * balanceOf[address(arg1)]) + 864] = 0
                            mem[var50002] = var50001
                            if not var50003 - 1:
                                if arg2 >= 2:
                                    revert with 0, 50
                                if uint16(var76003) >= uint16(mintNextId[uint8(arg2)].field_0):
                                    mem[(32 * balanceOf[address(arg1)]) + 896] = 32
                                    mem[(32 * balanceOf[address(arg1)]) + 928] = balanceOf[address(arg1)]
                                    idx = 0
                                    s = 128
                                    t = (32 * balanceOf[address(arg1)]) + 960
                                    while idx < mem[96]:
                                        _2998 = mem[s]
                                        mem[t] = mem[mem[s]]
                                        mem[t + 32] = mem[_2998 + 44 len 20]
                                        mem[t + 64] = mem[_2998 + 64]
                                        mem[t + 96] = mem[_2998 + 96]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 128
                                        continue 
                                    return memory
                                      from mem[64]
                                       len (162 * balanceOf[address(arg1)]) + -mem[64] + 960
                                if not ownerOf[var80001]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                if address(var84001) != arg1:
                                    # nil
                                else:
                                    if var86002 >= balanceOf[address(arg1)]:
                                        revert with 0, 50
                                    # nil
                            else:
                                mem[64] = (32 * balanceOf[address(arg1)]) + 1024
                                mem[(32 * balanceOf[address(arg1)]) + 896] = 0
                                mem[(32 * balanceOf[address(arg1)]) + 928] = 0
                                mem[(32 * balanceOf[address(arg1)]) + 960] = 0
                                mem[(32 * balanceOf[address(arg1)]) + 992] = 0
                                mem[var54002] = var54001
                                if not var54003 - 1:
                                    if arg2 >= 2:
                                        revert with 0, 50
                                    if uint16(var80003) < uint16(mintNextId[uint8(arg2)].field_0):
                                        if not ownerOf[var84001]:
                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                        # nil
                                    else:
                                        mem[(32 * balanceOf[address(arg1)]) + 1024] = 32
                                        mem[(32 * balanceOf[address(arg1)]) + 1056] = balanceOf[address(arg1)]
                                        idx = 0
                                        s = 128
                                        t = (32 * balanceOf[address(arg1)]) + 1088
                                        while idx < mem[96]:
                                            _3911 = mem[s]
                                            mem[t] = mem[mem[s]]
                                            mem[t + 32] = mem[_3911 + 44 len 20]
                                            mem[t + 64] = mem[_3911 + 64]
                                            mem[t + 96] = mem[_3911 + 96]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 128
                                            continue 
                                        return memory
                                          from mem[64]
                                           len (162 * balanceOf[address(arg1)]) + -mem[64] + 1088
                                else:
                                    mem[64] = (32 * balanceOf[address(arg1)]) + 1152
                                    mem[(32 * balanceOf[address(arg1)]) + 1024] = 0
                                    mem[(32 * balanceOf[address(arg1)]) + 1056] = 0
                                    mem[(32 * balanceOf[address(arg1)]) + 1088] = 0
                                    mem[(32 * balanceOf[address(arg1)]) + 1120] = 0
                                    mem[var58002] = var58001
                                    if var58003 - 1:
                                        if var62003 - 1:
                                            # nil
                                        else:
                                            if arg2 >= 2:
                                                revert with 0, 50
                                            # nil
                                    else:
                                        if arg2 >= 2:
                                            revert with 0, 50
                                        if uint16(var84003) < uint16(mintNextId[uint8(arg2)].field_0):
                                            # nil
                                        else:
                                            mem[(32 * balanceOf[address(arg1)]) + 1152] = 32
                                            mem[(32 * balanceOf[address(arg1)]) + 1184] = balanceOf[address(arg1)]
                                            idx = 0
                                            s = 128
                                            t = (32 * balanceOf[address(arg1)]) + 1216
                                            while idx < mem[96]:
                                                _4986 = mem[s]
                                                mem[t] = mem[mem[s]]
                                                mem[t + 32] = mem[_4986 + 44 len 20]
                                                mem[t + 64] = mem[_4986 + 64]
                                                mem[t + 96] = mem[_4986 + 96]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 128
                                                continue 
                                            return memory
                                              from mem[64]
                                               len (162 * balanceOf[address(arg1)]) + -mem[64] + 1216
}

function getTokens(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 2
    if uint16(mintNextId[uint8(arg1)].field_0) > test266151307():
        revert with 0, 65
    mem[96] = uint16(mintNextId[uint8(arg1)].field_0)
    mem[64] = (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 128
    if not uint16(mintNextId[uint8(arg1)].field_0):
        if arg1 < 2:
            if uint16(var36003) >= uint16(mintNextId[uint8(arg1)].field_0):
                if arg1 >= 2:
                    revert with 0, 50
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 128] = uint16(mintNextId[uint8(arg1)].field_0)
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 160] = 64
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 192] = uint16(mintNextId[uint8(arg1)].field_0)
                idx = 0
                s = 128
                t = (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 224
                while idx < uint16(mintNextId[uint8(arg1)].field_0):
                    _164 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_164 + 44 len 20]
                    mem[t + 64] = mem[_164 + 64]
                    mem[t + 96] = mem[_164 + 96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                return memory
                  from mem[64]
                   len (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + (128 * uint16(mintNextId[uint8(arg1)].field_0)) + -mem[64] + 224
            if var38002 < uint16(mintNextId[uint8(arg1)].field_0):
                mem[mem[(32 * var40001) + 128]] = var40003
                mem[0] = var42001
                mem[32] = 2
                if not ownerOf[var42001]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if var46003 < uint16(mintNextId[uint8(arg1)].field_0):
                    mem[mem[(32 * var48001) + 128] + 32] = address(var48003)
                    if arg1 < 2:
                        idx = var48004
                        s = var48005
                        while uint16(idx) < 10000:
                            if s >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * s) + 128] + 64] = stor((Mask(12, 4, idx) >> 4) + (625 * arg1) + 14)[uint8(idx)]
                            if arg1:
                                if s == -1:
                                    revert with 0, 17
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                if arg1 >= 2:
                                    revert with 0, 50
                                if uint16(uint16(idx) + 1) >= uint16(mintNextId[uint8(arg1)].field_0):
                                    if arg1 >= 2:
                                        revert with 0, 50
                                    _1008 = mem[64]
                                    mem[mem[64]] = uint16(mintNextId[uint8(arg1)].field_0)
                                    mem[mem[64] + 32] = 64
                                    _1019 = mem[96]
                                    mem[mem[64] + 64] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + 96
                                    while idx < _1019:
                                        _1115 = mem[s]
                                        mem[t] = mem[mem[s]]
                                        mem[t + 32] = mem[_1115 + 44 len 20]
                                        mem[t + 64] = mem[_1115 + 64]
                                        mem[t + 96] = mem[_1115 + 96]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 128
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _1008 + (128 * _1019) + -mem[64] + 96
                            else:
                                mem[0] = uint16(idx)
                                mem[32] = 1264
                                if s >= mem[96]:
                                    revert with 0, 50
                                mem[mem[(32 * s) + 128] + 96] = tokenUsed[idx << 240]
                                if s == -1:
                                    revert with 0, 17
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                if arg1 >= 2:
                                    revert with 0, 50
                                if uint16(uint16(idx) + 1) >= uint16(mintNextId[uint8(arg1)].field_0):
                                    if arg1 >= 2:
                                        revert with 0, 50
                                    _1022 = mem[64]
                                    mem[mem[64]] = uint16(mintNextId[uint8(arg1)].field_0)
                                    mem[mem[64] + 32] = 64
                                    _1039 = mem[96]
                                    mem[mem[64] + 64] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + 96
                                    while idx < _1039:
                                        _1120 = mem[s]
                                        mem[t] = mem[mem[s]]
                                        mem[t + 32] = mem[_1120 + 44 len 20]
                                        mem[t + 64] = mem[_1120 + 64]
                                        mem[t + 96] = mem[_1120 + 96]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 128
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _1022 + (128 * _1039) + -mem[64] + 96
                            ('lt', ('mask_shl', 16, 0, 0, ('add', 1, ('mask_shl', 16, 0, 0, ('var', 0)))), ('type', 16, ('field', 0, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg1')), ('name', 'mintNextId', 13))))))
                            if s + 1 >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * s + 1) + 128]] = uint16(uint16(idx) + 1)
                            mem[0] = uint16(uint16(idx) + 1) or uint8(arg1) << 16
                            mem[32] = 2
                            if not ownerOf[uint16(uint16(idx) + 1) or uint8(arg1) << 16]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            if s + 1 >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * s + 1) + 128] + 32] = ownerOf[uint16(uint16(idx) + 1) or uint8(arg1) << 16]
                            if arg1 >= 2:
                                revert with 0, 50
                            idx = uint16(idx) + 1
                            s = s + 1
                            continue 
        revert with 0, 50
    mem[64] = (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 256
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 128] = 0
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 160] = 0
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 192] = 0
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 224] = 0
    mem[var18002] = var18001
    if not var18003 - 1:
        if arg1 < 2:
            if uint16(var42003) >= uint16(mintNextId[uint8(arg1)].field_0):
                if arg1 >= 2:
                    revert with 0, 50
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 256] = uint16(mintNextId[uint8(arg1)].field_0)
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 288] = 64
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 320] = uint16(mintNextId[uint8(arg1)].field_0)
                idx = 0
                s = 128
                t = (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 352
                while idx < uint16(mintNextId[uint8(arg1)].field_0):
                    _352 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_352 + 44 len 20]
                    mem[t + 64] = mem[_352 + 64]
                    mem[t + 96] = mem[_352 + 96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                return memory
                  from mem[64]
                   len (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + (128 * uint16(mintNextId[uint8(arg1)].field_0)) + -mem[64] + 352
            if var44002 < uint16(mintNextId[uint8(arg1)].field_0):
                mem[mem[(32 * var46001) + 128]] = var46003
                mem[0] = var48001
                mem[32] = 2
                if not ownerOf[var48001]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if var52003 < uint16(mintNextId[uint8(arg1)].field_0):
                    mem[mem[(32 * var54001) + 128] + 32] = address(var54003)
                    if arg1 < 2:
                        idx = var54004
                        s = var54005
                        while uint16(idx) < 10000:
                            if s >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * s) + 128] + 64] = stor((Mask(12, 4, idx) >> 4) + (625 * arg1) + 14)[uint8(idx)]
                            if arg1:
                                if s == -1:
                                    revert with 0, 17
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                if arg1 >= 2:
                                    revert with 0, 50
                                if uint16(uint16(idx) + 1) >= uint16(mintNextId[uint8(arg1)].field_0):
                                    if arg1 >= 2:
                                        revert with 0, 50
                                    _1384 = mem[64]
                                    mem[mem[64]] = uint16(mintNextId[uint8(arg1)].field_0)
                                    mem[mem[64] + 32] = 64
                                    _1397 = mem[96]
                                    mem[mem[64] + 64] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + 96
                                    while idx < _1397:
                                        _1492 = mem[s]
                                        mem[t] = mem[mem[s]]
                                        mem[t + 32] = mem[_1492 + 44 len 20]
                                        mem[t + 64] = mem[_1492 + 64]
                                        mem[t + 96] = mem[_1492 + 96]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 128
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _1384 + (128 * _1397) + -mem[64] + 96
                            else:
                                mem[0] = uint16(idx)
                                mem[32] = 1264
                                if s >= mem[96]:
                                    revert with 0, 50
                                mem[mem[(32 * s) + 128] + 96] = tokenUsed[idx << 240]
                                if s == -1:
                                    revert with 0, 17
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                if arg1 >= 2:
                                    revert with 0, 50
                                if uint16(uint16(idx) + 1) >= uint16(mintNextId[uint8(arg1)].field_0):
                                    if arg1 >= 2:
                                        revert with 0, 50
                                    _1400 = mem[64]
                                    mem[mem[64]] = uint16(mintNextId[uint8(arg1)].field_0)
                                    mem[mem[64] + 32] = 64
                                    _1421 = mem[96]
                                    mem[mem[64] + 64] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + 96
                                    while idx < _1421:
                                        _1497 = mem[s]
                                        mem[t] = mem[mem[s]]
                                        mem[t + 32] = mem[_1497 + 44 len 20]
                                        mem[t + 64] = mem[_1497 + 64]
                                        mem[t + 96] = mem[_1497 + 96]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 128
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _1400 + (128 * _1421) + -mem[64] + 96
                            ('lt', ('mask_shl', 16, 0, 0, ('add', 1, ('mask_shl', 16, 0, 0, ('var', 0)))), ('type', 16, ('field', 0, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg1')), ('name', 'mintNextId', 13))))))
                            if s + 1 >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * s + 1) + 128]] = uint16(uint16(idx) + 1)
                            mem[0] = uint16(uint16(idx) + 1) or uint8(arg1) << 16
                            mem[32] = 2
                            if not ownerOf[uint16(uint16(idx) + 1) or uint8(arg1) << 16]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            if s + 1 >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * s + 1) + 128] + 32] = ownerOf[uint16(uint16(idx) + 1) or uint8(arg1) << 16]
                            if arg1 >= 2:
                                revert with 0, 50
                            idx = uint16(idx) + 1
                            s = s + 1
                            continue 
        revert with 0, 50
    mem[64] = (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 384
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 256] = 0
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 288] = 0
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 320] = 0
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 352] = 0
    mem[var22002] = var22001
    if not var22003 - 1:
        if arg1 < 2:
            if uint16(var46003) >= uint16(mintNextId[uint8(arg1)].field_0):
                if arg1 >= 2:
                    revert with 0, 50
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 384] = uint16(mintNextId[uint8(arg1)].field_0)
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 416] = 64
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 448] = uint16(mintNextId[uint8(arg1)].field_0)
                idx = 0
                s = 128
                t = (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 480
                while idx < uint16(mintNextId[uint8(arg1)].field_0):
                    _608 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_608 + 44 len 20]
                    mem[t + 64] = mem[_608 + 64]
                    mem[t + 96] = mem[_608 + 96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                return memory
                  from mem[64]
                   len (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + (128 * uint16(mintNextId[uint8(arg1)].field_0)) + -mem[64] + 480
            if var48002 < uint16(mintNextId[uint8(arg1)].field_0):
                mem[mem[(32 * var50001) + 128]] = var50003
                mem[0] = var52001
                mem[32] = 2
                if not ownerOf[var52001]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if var56003 < uint16(mintNextId[uint8(arg1)].field_0):
                    mem[mem[(32 * var58001) + 128] + 32] = address(var58003)
                    if arg1 < 2:
                        idx = var58004
                        s = var58005
                        while uint16(idx) < 10000:
                            if s >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * s) + 128] + 64] = stor((Mask(12, 4, idx) >> 4) + (625 * arg1) + 14)[uint8(idx)]
                            if arg1:
                                if s == -1:
                                    revert with 0, 17
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                if arg1 >= 2:
                                    revert with 0, 50
                                if uint16(uint16(idx) + 1) >= uint16(mintNextId[uint8(arg1)].field_0):
                                    if arg1 >= 2:
                                        revert with 0, 50
                                    _1757 = mem[64]
                                    mem[mem[64]] = uint16(mintNextId[uint8(arg1)].field_0)
                                    mem[mem[64] + 32] = 64
                                    _1770 = mem[96]
                                    mem[mem[64] + 64] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + 96
                                    while idx < _1770:
                                        _1865 = mem[s]
                                        mem[t] = mem[mem[s]]
                                        mem[t + 32] = mem[_1865 + 44 len 20]
                                        mem[t + 64] = mem[_1865 + 64]
                                        mem[t + 96] = mem[_1865 + 96]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 128
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _1757 + (128 * _1770) + -mem[64] + 96
                            else:
                                mem[0] = uint16(idx)
                                mem[32] = 1264
                                if s >= mem[96]:
                                    revert with 0, 50
                                mem[mem[(32 * s) + 128] + 96] = tokenUsed[idx << 240]
                                if s == -1:
                                    revert with 0, 17
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                if arg1 >= 2:
                                    revert with 0, 50
                                if uint16(uint16(idx) + 1) >= uint16(mintNextId[uint8(arg1)].field_0):
                                    if arg1 >= 2:
                                        revert with 0, 50
                                    _1773 = mem[64]
                                    mem[mem[64]] = uint16(mintNextId[uint8(arg1)].field_0)
                                    mem[mem[64] + 32] = 64
                                    _1794 = mem[96]
                                    mem[mem[64] + 64] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + 96
                                    while idx < _1794:
                                        _1870 = mem[s]
                                        mem[t] = mem[mem[s]]
                                        mem[t + 32] = mem[_1870 + 44 len 20]
                                        mem[t + 64] = mem[_1870 + 64]
                                        mem[t + 96] = mem[_1870 + 96]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 128
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _1773 + (128 * _1794) + -mem[64] + 96
                            ('lt', ('mask_shl', 16, 0, 0, ('add', 1, ('mask_shl', 16, 0, 0, ('var', 0)))), ('type', 16, ('field', 0, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg1')), ('name', 'mintNextId', 13))))))
                            if s + 1 >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * s + 1) + 128]] = uint16(uint16(idx) + 1)
                            mem[0] = uint16(uint16(idx) + 1) or uint8(arg1) << 16
                            mem[32] = 2
                            if not ownerOf[uint16(uint16(idx) + 1) or uint8(arg1) << 16]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            if s + 1 >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * s + 1) + 128] + 32] = ownerOf[uint16(uint16(idx) + 1) or uint8(arg1) << 16]
                            if arg1 >= 2:
                                revert with 0, 50
                            idx = uint16(idx) + 1
                            s = s + 1
                            continue 
        revert with 0, 50
    mem[64] = (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 512
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 384] = 0
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 416] = 0
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 448] = 0
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 480] = 0
    mem[var26002] = var26001
    if not var26003 - 1:
        if arg1 < 2:
            if uint16(var50003) >= uint16(mintNextId[uint8(arg1)].field_0):
                if arg1 >= 2:
                    revert with 0, 50
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 512] = uint16(mintNextId[uint8(arg1)].field_0)
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 544] = 64
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 576] = uint16(mintNextId[uint8(arg1)].field_0)
                idx = 0
                s = 128
                t = (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 608
                while idx < uint16(mintNextId[uint8(arg1)].field_0):
                    _934 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_934 + 44 len 20]
                    mem[t + 64] = mem[_934 + 64]
                    mem[t + 96] = mem[_934 + 96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                return memory
                  from mem[64]
                   len (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + (128 * uint16(mintNextId[uint8(arg1)].field_0)) + -mem[64] + 608
            if var52002 < uint16(mintNextId[uint8(arg1)].field_0):
                mem[mem[(32 * var54001) + 128]] = var54003
                mem[0] = var56001
                mem[32] = 2
                if not ownerOf[var56001]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if var60003 < uint16(mintNextId[uint8(arg1)].field_0):
                    mem[mem[(32 * var62001) + 128] + 32] = address(var62003)
                    if arg1 < 2:
                        idx = var62004
                        s = var62005
                        while uint16(idx) < 10000:
                            if s >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * s) + 128] + 64] = stor((Mask(12, 4, idx) >> 4) + (625 * arg1) + 14)[uint8(idx)]
                            if arg1:
                                if s == -1:
                                    revert with 0, 17
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                if arg1 >= 2:
                                    revert with 0, 50
                                if uint16(uint16(idx) + 1) >= uint16(mintNextId[uint8(arg1)].field_0):
                                    if arg1 >= 2:
                                        revert with 0, 50
                                    _2130 = mem[64]
                                    mem[mem[64]] = uint16(mintNextId[uint8(arg1)].field_0)
                                    mem[mem[64] + 32] = 64
                                    _2143 = mem[96]
                                    mem[mem[64] + 64] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + 96
                                    while idx < _2143:
                                        _2238 = mem[s]
                                        mem[t] = mem[mem[s]]
                                        mem[t + 32] = mem[_2238 + 44 len 20]
                                        mem[t + 64] = mem[_2238 + 64]
                                        mem[t + 96] = mem[_2238 + 96]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 128
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _2130 + (128 * _2143) + -mem[64] + 96
                            else:
                                mem[0] = uint16(idx)
                                mem[32] = 1264
                                if s >= mem[96]:
                                    revert with 0, 50
                                mem[mem[(32 * s) + 128] + 96] = tokenUsed[idx << 240]
                                if s == -1:
                                    revert with 0, 17
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                if arg1 >= 2:
                                    revert with 0, 50
                                if uint16(uint16(idx) + 1) >= uint16(mintNextId[uint8(arg1)].field_0):
                                    if arg1 >= 2:
                                        revert with 0, 50
                                    _2146 = mem[64]
                                    mem[mem[64]] = uint16(mintNextId[uint8(arg1)].field_0)
                                    mem[mem[64] + 32] = 64
                                    _2167 = mem[96]
                                    mem[mem[64] + 64] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + 96
                                    while idx < _2167:
                                        _2243 = mem[s]
                                        mem[t] = mem[mem[s]]
                                        mem[t + 32] = mem[_2243 + 44 len 20]
                                        mem[t + 64] = mem[_2243 + 64]
                                        mem[t + 96] = mem[_2243 + 96]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 128
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _2146 + (128 * _2167) + -mem[64] + 96
                            ('lt', ('mask_shl', 16, 0, 0, ('add', 1, ('mask_shl', 16, 0, 0, ('var', 0)))), ('type', 16, ('field', 0, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg1')), ('name', 'mintNextId', 13))))))
                            if s + 1 >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * s + 1) + 128]] = uint16(uint16(idx) + 1)
                            mem[0] = uint16(uint16(idx) + 1) or uint8(arg1) << 16
                            mem[32] = 2
                            if not ownerOf[uint16(uint16(idx) + 1) or uint8(arg1) << 16]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            if s + 1 >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * s + 1) + 128] + 32] = ownerOf[uint16(uint16(idx) + 1) or uint8(arg1) << 16]
                            if arg1 >= 2:
                                revert with 0, 50
                            idx = uint16(idx) + 1
                            s = s + 1
                            continue 
        revert with 0, 50
    mem[64] = (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 640
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 512] = 0
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 544] = 0
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 576] = 0
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 608] = 0
    mem[var30002] = var30001
    if not var30003 - 1:
        if arg1 < 2:
            if uint16(var54003) >= uint16(mintNextId[uint8(arg1)].field_0):
                if arg1 >= 2:
                    revert with 0, 50
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 640] = uint16(mintNextId[uint8(arg1)].field_0)
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 672] = 64
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 704] = uint16(mintNextId[uint8(arg1)].field_0)
                idx = 0
                s = 128
                t = (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 736
                while idx < uint16(mintNextId[uint8(arg1)].field_0):
                    _1306 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_1306 + 44 len 20]
                    mem[t + 64] = mem[_1306 + 64]
                    mem[t + 96] = mem[_1306 + 96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                return memory
                  from mem[64]
                   len (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + (128 * uint16(mintNextId[uint8(arg1)].field_0)) + -mem[64] + 736
            if var56002 < uint16(mintNextId[uint8(arg1)].field_0):
                mem[mem[(32 * var58001) + 128]] = var58003
                mem[0] = var60001
                mem[32] = 2
                if not ownerOf[var60001]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if var64003 < uint16(mintNextId[uint8(arg1)].field_0):
                    mem[mem[(32 * var66001) + 128] + 32] = address(var66003)
                    if arg1 < 2:
                        idx = var66004
                        s = var66005
                        while uint16(idx) < 10000:
                            if s >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * s) + 128] + 64] = stor((Mask(12, 4, idx) >> 4) + (625 * arg1) + 14)[uint8(idx)]
                            if arg1:
                                if s == -1:
                                    revert with 0, 17
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                if arg1 >= 2:
                                    revert with 0, 50
                                if uint16(uint16(idx) + 1) >= uint16(mintNextId[uint8(arg1)].field_0):
                                    if arg1 >= 2:
                                        revert with 0, 50
                                    _2503 = mem[64]
                                    mem[mem[64]] = uint16(mintNextId[uint8(arg1)].field_0)
                                    mem[mem[64] + 32] = 64
                                    _2516 = mem[96]
                                    mem[mem[64] + 64] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + 96
                                    while idx < _2516:
                                        _2611 = mem[s]
                                        mem[t] = mem[mem[s]]
                                        mem[t + 32] = mem[_2611 + 44 len 20]
                                        mem[t + 64] = mem[_2611 + 64]
                                        mem[t + 96] = mem[_2611 + 96]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 128
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _2503 + (128 * _2516) + -mem[64] + 96
                            else:
                                mem[0] = uint16(idx)
                                mem[32] = 1264
                                if s >= mem[96]:
                                    revert with 0, 50
                                mem[mem[(32 * s) + 128] + 96] = tokenUsed[idx << 240]
                                if s == -1:
                                    revert with 0, 17
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                if arg1 >= 2:
                                    revert with 0, 50
                                if uint16(uint16(idx) + 1) >= uint16(mintNextId[uint8(arg1)].field_0):
                                    if arg1 >= 2:
                                        revert with 0, 50
                                    _2519 = mem[64]
                                    mem[mem[64]] = uint16(mintNextId[uint8(arg1)].field_0)
                                    mem[mem[64] + 32] = 64
                                    _2540 = mem[96]
                                    mem[mem[64] + 64] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + 96
                                    while idx < _2540:
                                        _2616 = mem[s]
                                        mem[t] = mem[mem[s]]
                                        mem[t + 32] = mem[_2616 + 44 len 20]
                                        mem[t + 64] = mem[_2616 + 64]
                                        mem[t + 96] = mem[_2616 + 96]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 128
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _2519 + (128 * _2540) + -mem[64] + 96
                            ('lt', ('mask_shl', 16, 0, 0, ('add', 1, ('mask_shl', 16, 0, 0, ('var', 0)))), ('type', 16, ('field', 0, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg1')), ('name', 'mintNextId', 13))))))
                            if s + 1 >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * s + 1) + 128]] = uint16(uint16(idx) + 1)
                            mem[0] = uint16(uint16(idx) + 1) or uint8(arg1) << 16
                            mem[32] = 2
                            if not ownerOf[uint16(uint16(idx) + 1) or uint8(arg1) << 16]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            if s + 1 >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * s + 1) + 128] + 32] = ownerOf[uint16(uint16(idx) + 1) or uint8(arg1) << 16]
                            if arg1 >= 2:
                                revert with 0, 50
                            idx = uint16(idx) + 1
                            s = s + 1
                            continue 
        revert with 0, 50
    mem[64] = (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 768
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 640] = 0
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 672] = 0
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 704] = 0
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 736] = 0
    mem[var34002] = var34001
    if not var34003 - 1:
        if arg1 < 2:
            if uint16(var58003) >= uint16(mintNextId[uint8(arg1)].field_0):
                if arg1 >= 2:
                    revert with 0, 50
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 768] = uint16(mintNextId[uint8(arg1)].field_0)
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 800] = 64
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 832] = uint16(mintNextId[uint8(arg1)].field_0)
                idx = 0
                s = 128
                t = (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 864
                while idx < uint16(mintNextId[uint8(arg1)].field_0):
                    _1679 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_1679 + 44 len 20]
                    mem[t + 64] = mem[_1679 + 64]
                    mem[t + 96] = mem[_1679 + 96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                return memory
                  from mem[64]
                   len (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + (128 * uint16(mintNextId[uint8(arg1)].field_0)) + -mem[64] + 864
            if var60002 < uint16(mintNextId[uint8(arg1)].field_0):
                mem[mem[(32 * var62001) + 128]] = var62003
                mem[0] = var64001
                if not ownerOf[var64001]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if var68003 < uint16(mintNextId[uint8(arg1)].field_0):
                    mem[mem[(32 * var70001) + 128] + 32] = address(var70003)
                    if arg1 < 2:
                        idx = var70004
                        s = var70005
                        while uint16(idx) < 10000:
                            if s >= mem[96]:
                                revert with 0, 50
                            mem[mem[(32 * s) + 128] + 64] = stor((Mask(12, 4, idx) >> 4) + (625 * arg1) + 14)[uint8(idx)]
                            if arg1:
                                if s == -1:
                                    revert with 0, 17
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                if arg1 >= 2:
                                    revert with 0, 50
                                if uint16(uint16(idx) + 1) >= uint16(mintNextId[uint8(arg1)].field_0):
                                    if arg1 >= 2:
                                        revert with 0, 50
                                    # nil
                                else:
                                    if s + 1 >= mem[96]:
                                        revert with 0, 50
                                    mem[mem[(32 * s + 1) + 128]] = uint16(uint16(idx) + 1)
                                    mem[0] = uint16(uint16(idx) + 1) or uint8(arg1) << 16
                                    mem[32] = 2
                                    if not ownerOf[uint16(uint16(idx) + 1) or uint8(arg1) << 16]:
                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                    if s + 1 >= mem[96]:
                                        revert with 0, 50
                                    mem[mem[(32 * s + 1) + 128] + 32] = ownerOf[uint16(uint16(idx) + 1) or uint8(arg1) << 16]
                                    if arg1 >= 2:
                                        revert with 0, 50
                                    idx = uint16(idx) + 1
                                    s = s + 1
                                    continue 
                            else:
                                if s >= mem[96]:
                                    revert with 0, 50
                                mem[mem[(32 * s) + 128] + 96] = tokenUsed[idx << 240]
                                if s == -1:
                                    revert with 0, 17
                                if uint16(idx) == 65535:
                                    revert with 0, 17
                                if arg1 >= 2:
                                    revert with 0, 50
                                if uint16(uint16(idx) + 1) >= uint16(mintNextId[uint8(arg1)].field_0):
                                    if arg1 >= 2:
                                        revert with 0, 50
                                    # nil
                                else:
                                    if s + 1 >= mem[96]:
                                        revert with 0, 50
                                    mem[mem[(32 * s + 1) + 128]] = uint16(uint16(idx) + 1)
                                    mem[0] = uint16(uint16(idx) + 1) or uint8(arg1) << 16
                                    mem[32] = 2
                                    if not ownerOf[uint16(uint16(idx) + 1) or uint8(arg1) << 16]:
                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                    if s + 1 >= mem[96]:
                                        revert with 0, 50
                                    mem[mem[(32 * s + 1) + 128] + 32] = ownerOf[uint16(uint16(idx) + 1) or uint8(arg1) << 16]
                                    if arg1 >= 2:
                                        revert with 0, 50
                                    idx = uint16(idx) + 1
                                    s = s + 1
                                    continue 
        revert with 0, 50
    mem[64] = (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 896
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 768] = 0
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 800] = 0
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 832] = 0
    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 864] = 0
    mem[var38002] = var38001
    if not var38003 - 1:
        if arg1 >= 2:
            revert with 0, 50
        if uint16(var62003) < uint16(mintNextId[uint8(arg1)].field_0):
            if var64002 >= uint16(mintNextId[uint8(arg1)].field_0):
                revert with 0, 50
            if not ownerOf[var68001]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if var72003 >= uint16(mintNextId[uint8(arg1)].field_0):
                revert with 0, 50
            # nil
        else:
            if arg1 >= 2:
                revert with 0, 50
            mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 896] = uint16(mintNextId[uint8(arg1)].field_0)
            mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 928] = 64
            mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 960] = uint16(mintNextId[uint8(arg1)].field_0)
            idx = 0
            s = 128
            t = (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 992
            while idx < uint16(mintNextId[uint8(arg1)].field_0):
                _2052 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2052 + 44 len 20]
                mem[t + 64] = mem[_2052 + 64]
                mem[t + 96] = mem[_2052 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + (128 * uint16(mintNextId[uint8(arg1)].field_0)) + -mem[64] + 992
    else:
        mem[64] = (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 1024
        mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 896] = 0
        mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 928] = 0
        mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 960] = 0
        mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 992] = 0
        mem[var42002] = var42001
        if not var42003 - 1:
            if arg1 >= 2:
                revert with 0, 50
            if uint16(var66003) < uint16(mintNextId[uint8(arg1)].field_0):
                if var68002 >= uint16(mintNextId[uint8(arg1)].field_0):
                    revert with 0, 50
                if not ownerOf[var72001]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                # nil
            else:
                if arg1 >= 2:
                    revert with 0, 50
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 1024] = uint16(mintNextId[uint8(arg1)].field_0)
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 1056] = 64
                mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 1088] = uint16(mintNextId[uint8(arg1)].field_0)
                idx = 0
                s = 128
                t = (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 1120
                while idx < uint16(mintNextId[uint8(arg1)].field_0):
                    _2425 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_2425 + 44 len 20]
                    mem[t + 64] = mem[_2425 + 64]
                    mem[t + 96] = mem[_2425 + 96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                return memory
                  from mem[64]
                   len (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + (128 * uint16(mintNextId[uint8(arg1)].field_0)) + -mem[64] + 1120
        else:
            mem[64] = (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 1152
            mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 1024] = 0
            mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 1056] = 0
            mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 1088] = 0
            mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 1120] = 0
            mem[var46002] = var46001
            if var46003 - 1:
                if var50003 - 1:
                    # nil
                else:
                    if arg1 >= 2:
                        revert with 0, 50
                    # nil
            else:
                if arg1 >= 2:
                    revert with 0, 50
                if uint16(var70003) < uint16(mintNextId[uint8(arg1)].field_0):
                    if var72002 >= uint16(mintNextId[uint8(arg1)].field_0):
                        revert with 0, 50
                    # nil
                else:
                    if arg1 >= 2:
                        revert with 0, 50
                    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 1152] = uint16(mintNextId[uint8(arg1)].field_0)
                    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 1184] = 64
                    mem[(32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 1216] = uint16(mintNextId[uint8(arg1)].field_0)
                    idx = 0
                    s = 128
                    t = (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + 1248
                    while idx < uint16(mintNextId[uint8(arg1)].field_0):
                        _2798 = mem[s]
                        mem[t] = mem[mem[s]]
                        mem[t + 32] = mem[_2798 + 44 len 20]
                        mem[t + 64] = mem[_2798 + 64]
                        mem[t + 96] = mem[_2798 + 96]
                        idx = idx + 1
                        s = s + 32
                        t = t + 128
                        continue 
                    return memory
                      from mem[64]
                       len (32 * uint16(mintNextId[uint8(arg1) / 16].field_0 / 256^(2 * arg1 % 16))) + (128 * uint16(mintNextId[uint8(arg1)].field_0)) + -mem[64] + 1248
}



}
