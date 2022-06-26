contract main {




// =====================  Runtime code  =====================


#
#  - initializeV2()
#  - sub_8eaf435b(?)
#  - initialize(uint256 arg1, uint256 arg2, address arg3)
#  - tokenURI(uint256 arg1)
#
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
address owner;
mapping of uint256 sub_2b1331a8;
uint256 numMinted;
mapping of struct sub_be75288d;
uint256 presaleStartTime;
uint256 presaleEndTime;
uint8 transfersEnabled; offset 160
uint128 stor207; offset 160
address _signerAddress;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return numMinted
}

function presaleEndTime() {
    return presaleEndTime
}

function sub_2b1331a8(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_2b1331a8[arg1][arg2]
}

function sub_30ec18c2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_2b1331a8[address(arg1)][arg2]
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

function owner() {
    return owner
}

function presaleStartTime() {
    return presaleStartTime
}

function sub_be75288d(?) {
    require calldata.size - 4 >= 32
    return sub_be75288d[arg1].field_256
}

function transfersEnabled() {
    return bool(transfersEnabled)
}

function _signerAddress() {
    return _signerAddress
}

function numMinted() {
    return numMinted
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_ecdd42c2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    presaleStartTime = arg1
}

function sub_1593d8a5(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be75288d[arg1].field_256 = arg2
}

function sub_dcb2f4dc(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be75288d[arg1].field_768 = arg2
}

function sub_e345c564(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be75288d[arg1].field_512 = arg2
}

function sub_135ee927(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be75288d[arg1].field_1536 = arg2
}

function sub_72c0ab83(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be75288d[arg1].field_1024 = arg2
}

function sub_d010ad7f(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be75288d[arg1].field_1280 = arg2
}

function updatePresaleEndTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    presaleEndTime = arg1
}

function updateSignerAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _signerAddress = arg1
}

function setTransfersEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor207 = Mask(96, 0, arg1)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function Sweep(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(arg1) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
        if not stor106[stor103[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_3a0a52e4(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_be75288d[arg1].field_1792:
        if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            sub_be75288d[arg1][7][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            sub_be75288d[arg1].field_1792 = 0
            idx = 0
            while (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 31 / 32 > idx:
                sub_be75288d[arg1][idx + 7].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
            revert with 0, 34
        if arg2.length:
            sub_be75288d[arg1][7][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            sub_be75288d[arg1].field_1792 = 0
            idx = 0
            while sub_be75288d[arg1].field_1793 + 31 / 32 > idx:
                sub_be75288d[arg1][idx + 7].field_0 = 0
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if arg1:
        if not transfersEnabled:
            revert with 0, 'Transfers not enabled yet'
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if arg1:
        if not transfersEnabled:
            revert with 0, 'Transfers not enabled yet'
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
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
    require calldata.size > arg4 + 35
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if arg1:
        if not transfersEnabled:
            revert with 0, 'Transfers not enabled yet'
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
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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

function name() {
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor101.length):
            if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor101.length):
                if 31 < uint255(stor101.length) * 0.5:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor101.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 0, 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(uint255(stor101.length) * 0.5) + 192 len ceil32(uint255(stor101.length) * 0.5)] = mem[128 len ceil32(uint255(stor101.length) * 0.5)]
        if ceil32(uint255(stor101.length) * 0.5) > uint255(stor101.length) * 0.5:
            mem[(uint255(stor101.length) * 0.5) + ceil32(uint255(stor101.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)], mem[(2 * ceil32(uint255(stor101.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor101.length) * 0.5)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 0, 34
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor101.length):
            if 31 < uint255(stor101.length) * 0.5:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while (uint255(stor101.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
    if ceil32(stor101.length.field_1) > stor101.length.field_1:
        mem[stor101.length.field_1 + ceil32(stor101.length.field_1) + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
}

function symbol() {
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor102.length):
            if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor102.length):
                if 31 < uint255(stor102.length) * 0.5:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor102.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 0, 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(uint255(stor102.length) * 0.5) + 192 len ceil32(uint255(stor102.length) * 0.5)] = mem[128 len ceil32(uint255(stor102.length) * 0.5)]
        if ceil32(uint255(stor102.length) * 0.5) > uint255(stor102.length) * 0.5:
            mem[(uint255(stor102.length) * 0.5) + ceil32(uint255(stor102.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)], mem[(2 * ceil32(uint255(stor102.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor102.length) * 0.5)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 0, 34
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor102.length):
            if 31 < uint255(stor102.length) * 0.5:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while (uint255(stor102.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
    if ceil32(stor102.length.field_1) > stor102.length.field_1:
        mem[stor102.length.field_1 + ceil32(stor102.length.field_1) + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
}

function sub_cf37c49a(?) {
    require calldata.size - 4 >= 32
    if sub_be75288d[arg1].field_0:
        if sub_be75288d[arg1].field_0 == uint255(sub_be75288d[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if sub_be75288d[arg1].field_0:
            if sub_be75288d[arg1].field_0 == uint255(sub_be75288d[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, sub_be75288d[arg1].field_0):
                if sub_be75288d[arg1].field_1792:
                    if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if sub_be75288d[arg1].field_1792:
                        if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                            else:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    else:
                        if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                            revert with 0, 34
                        if not sub_be75288d[arg1].field_1793:
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if 31 >= sub_be75288d[arg1].field_1793:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                            else:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                           sub_be75288d[arg1].field_256,
                           sub_be75288d[arg1].field_512,
                           sub_be75288d[arg1].field_768,
                           sub_be75288d[arg1].field_1024,
                           sub_be75288d[arg1].field_1280,
                           sub_be75288d[arg1].field_1536,
                           ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                    revert with 0, 34
                if sub_be75288d[arg1].field_1792:
                    if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                        if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                            mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                    else:
                        if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                        else:
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                        if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                            mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                else:
                    if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                        revert with 0, 34
                    if not sub_be75288d[arg1].field_1793:
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                        if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                            mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                    else:
                        if 31 >= sub_be75288d[arg1].field_1793:
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                        else:
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                        if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                            mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
            else:
                if 31 < uint255(sub_be75288d[arg1].field_0) * 0.5:
                    mem[128] = sub_be75288d[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_be75288d[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = sub_be75288d[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sub_be75288d[arg1].field_1792:
                        if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if sub_be75288d[arg1].field_1792:
                            if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, sub_be75288d[arg1].field_1792):
                                if 31 < uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                    idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                        mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                        mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                    mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                    return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], uint255(sub_be75288d[arg1].field_1792) * 0.5, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                                           sub_be75288d[arg1].field_256,
                                           sub_be75288d[arg1].field_512,
                                           sub_be75288d[arg1].field_768,
                                           sub_be75288d[arg1].field_1024,
                                           sub_be75288d[arg1].field_1280,
                                           sub_be75288d[arg1].field_1536,
                                           ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                        else:
                            if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                                revert with 0, 34
                            if sub_be75288d[arg1].field_1793:
                                if 31 < sub_be75288d[arg1].field_1793:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                    idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                        mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                        mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                    mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                    return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], uint255(sub_be75288d[arg1].field_1792) * 0.5, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                                           sub_be75288d[arg1].field_256,
                                           sub_be75288d[arg1].field_512,
                                           sub_be75288d[arg1].field_768,
                                           sub_be75288d[arg1].field_1024,
                                           sub_be75288d[arg1].field_1280,
                                           sub_be75288d[arg1].field_1536,
                                           ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                               sub_be75288d[arg1].field_256,
                               sub_be75288d[arg1].field_512,
                               sub_be75288d[arg1].field_768,
                               sub_be75288d[arg1].field_1024,
                               sub_be75288d[arg1].field_1280,
                               sub_be75288d[arg1].field_1536,
                               ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                    if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                        revert with 0, 34
                    if sub_be75288d[arg1].field_1792:
                        if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if 31 < uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                                return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], sub_be75288d[arg1].field_1793, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]), 
                                       sub_be75288d[arg1].field_256,
                                       sub_be75288d[arg1].field_512,
                                       sub_be75288d[arg1].field_768,
                                       sub_be75288d[arg1].field_1024,
                                       sub_be75288d[arg1].field_1280,
                                       sub_be75288d[arg1].field_1536,
                                       ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                    else:
                        if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                            revert with 0, 34
                        if sub_be75288d[arg1].field_1793:
                            if 31 < sub_be75288d[arg1].field_1793:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                                return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], sub_be75288d[arg1].field_1793, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]), 
                                       sub_be75288d[arg1].field_256,
                                       sub_be75288d[arg1].field_512,
                                       sub_be75288d[arg1].field_768,
                                       sub_be75288d[arg1].field_1024,
                                       sub_be75288d[arg1].field_1280,
                                       sub_be75288d[arg1].field_1536,
                                       ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                    if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                        mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                    mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                    mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                    if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                        mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                else:
                    mem[128] = 256 * sub_be75288d[arg1].field_8
                    if sub_be75288d[arg1].field_1792:
                        if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if sub_be75288d[arg1].field_1792:
                            if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                                if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                            else:
                                if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                                else:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                    idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                        mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                                if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                                revert with 0, 34
                            if not sub_be75288d[arg1].field_1793:
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                                if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                            else:
                                if 31 >= sub_be75288d[arg1].field_1793:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                                else:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                    idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                        mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                                if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                               sub_be75288d[arg1].field_256,
                               sub_be75288d[arg1].field_512,
                               sub_be75288d[arg1].field_768,
                               sub_be75288d[arg1].field_1024,
                               sub_be75288d[arg1].field_1280,
                               sub_be75288d[arg1].field_1536,
                               ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                    if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                        revert with 0, 34
                    if sub_be75288d[arg1].field_1792:
                        if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                            if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                                mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                        else:
                            if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                            else:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                            if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                                mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                    else:
                        if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                            revert with 0, 34
                        if not sub_be75288d[arg1].field_1793:
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                            if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                                mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                        else:
                            if 31 >= sub_be75288d[arg1].field_1793:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                            else:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                            if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                                mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
        else:
            if sub_be75288d[arg1].field_0 == sub_be75288d[arg1].field_1 < 32:
                revert with 0, 34
            if not sub_be75288d[arg1].field_1:
                if sub_be75288d[arg1].field_1792:
                    if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if sub_be75288d[arg1].field_1792:
                        if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                            else:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    else:
                        if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                            revert with 0, 34
                        if not sub_be75288d[arg1].field_1793:
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if 31 >= sub_be75288d[arg1].field_1793:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                            else:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                           sub_be75288d[arg1].field_256,
                           sub_be75288d[arg1].field_512,
                           sub_be75288d[arg1].field_768,
                           sub_be75288d[arg1].field_1024,
                           sub_be75288d[arg1].field_1280,
                           sub_be75288d[arg1].field_1536,
                           ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                    revert with 0, 34
                if sub_be75288d[arg1].field_1792:
                    if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                        if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                            mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                    else:
                        if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                        else:
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                        if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                            mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                else:
                    if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                        revert with 0, 34
                    if not sub_be75288d[arg1].field_1793:
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                        if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                            mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                    else:
                        if 31 >= sub_be75288d[arg1].field_1793:
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                        else:
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                        if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                            mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
            else:
                if 31 < sub_be75288d[arg1].field_1:
                    mem[128] = sub_be75288d[arg1].field_0
                    idx = 128
                    s = 0
                    while sub_be75288d[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = sub_be75288d[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sub_be75288d[arg1].field_1792:
                        if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if sub_be75288d[arg1].field_1792:
                            if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, sub_be75288d[arg1].field_1792):
                                if 31 < uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                    idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                        mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                        mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                    mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                    return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], uint255(sub_be75288d[arg1].field_1792) * 0.5, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                                           sub_be75288d[arg1].field_256,
                                           sub_be75288d[arg1].field_512,
                                           sub_be75288d[arg1].field_768,
                                           sub_be75288d[arg1].field_1024,
                                           sub_be75288d[arg1].field_1280,
                                           sub_be75288d[arg1].field_1536,
                                           ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                        else:
                            if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                                revert with 0, 34
                            if sub_be75288d[arg1].field_1793:
                                if 31 < sub_be75288d[arg1].field_1793:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                    idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                        mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                        mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                    mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                    return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], uint255(sub_be75288d[arg1].field_1792) * 0.5, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                                           sub_be75288d[arg1].field_256,
                                           sub_be75288d[arg1].field_512,
                                           sub_be75288d[arg1].field_768,
                                           sub_be75288d[arg1].field_1024,
                                           sub_be75288d[arg1].field_1280,
                                           sub_be75288d[arg1].field_1536,
                                           ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                               sub_be75288d[arg1].field_256,
                               sub_be75288d[arg1].field_512,
                               sub_be75288d[arg1].field_768,
                               sub_be75288d[arg1].field_1024,
                               sub_be75288d[arg1].field_1280,
                               sub_be75288d[arg1].field_1536,
                               ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                    if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                        revert with 0, 34
                    if sub_be75288d[arg1].field_1792:
                        if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if 31 < uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                                return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], sub_be75288d[arg1].field_1793, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]), 
                                       sub_be75288d[arg1].field_256,
                                       sub_be75288d[arg1].field_512,
                                       sub_be75288d[arg1].field_768,
                                       sub_be75288d[arg1].field_1024,
                                       sub_be75288d[arg1].field_1280,
                                       sub_be75288d[arg1].field_1536,
                                       ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                    else:
                        if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                            revert with 0, 34
                        if sub_be75288d[arg1].field_1793:
                            if 31 < sub_be75288d[arg1].field_1793:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                                return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], sub_be75288d[arg1].field_1793, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]), 
                                       sub_be75288d[arg1].field_256,
                                       sub_be75288d[arg1].field_512,
                                       sub_be75288d[arg1].field_768,
                                       sub_be75288d[arg1].field_1024,
                                       sub_be75288d[arg1].field_1280,
                                       sub_be75288d[arg1].field_1536,
                                       ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                    if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                        mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                    mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                    mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                    if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                        mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                else:
                    mem[128] = 256 * sub_be75288d[arg1].field_8
                    if sub_be75288d[arg1].field_1792:
                        if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if sub_be75288d[arg1].field_1792:
                            if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                                if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                            else:
                                if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                                else:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                    idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                        mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                                if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                                revert with 0, 34
                            if not sub_be75288d[arg1].field_1793:
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                                if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                            else:
                                if 31 >= sub_be75288d[arg1].field_1793:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                                else:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                    idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                        mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                                if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                               sub_be75288d[arg1].field_256,
                               sub_be75288d[arg1].field_512,
                               sub_be75288d[arg1].field_768,
                               sub_be75288d[arg1].field_1024,
                               sub_be75288d[arg1].field_1280,
                               sub_be75288d[arg1].field_1536,
                               ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                    if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                        revert with 0, 34
                    if sub_be75288d[arg1].field_1792:
                        if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                            if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                                mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                        else:
                            if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                            else:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                            if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                                mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                    else:
                        if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                            revert with 0, 34
                        if not sub_be75288d[arg1].field_1793:
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                            if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                                mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                        else:
                            if 31 >= sub_be75288d[arg1].field_1793:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * sub_be75288d[arg1].field_1800
                            else:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                            if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                                mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
        return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], sub_be75288d[arg1].field_1792, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793)]), 
               sub_be75288d[arg1].field_256,
               sub_be75288d[arg1].field_512,
               sub_be75288d[arg1].field_768,
               sub_be75288d[arg1].field_1024,
               sub_be75288d[arg1].field_1280,
               sub_be75288d[arg1].field_1536,
               ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
    if sub_be75288d[arg1].field_0 == sub_be75288d[arg1].field_1 < 32:
        revert with 0, 34
    if sub_be75288d[arg1].field_0:
        if sub_be75288d[arg1].field_0 == uint255(sub_be75288d[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, sub_be75288d[arg1].field_0):
            if sub_be75288d[arg1].field_1792:
                if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                    revert with 0, 34
                if sub_be75288d[arg1].field_1792:
                    if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                        if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                            mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    else:
                        if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                        else:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                            mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                else:
                    if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                        revert with 0, 34
                    if not sub_be75288d[arg1].field_1793:
                        if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                            mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    else:
                        if 31 >= sub_be75288d[arg1].field_1793:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                        else:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                            mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                return Array(len=sub_be75288d[arg1].field_0, data=mem[128 len ceil32(sub_be75288d[arg1].field_1)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                       sub_be75288d[arg1].field_256,
                       sub_be75288d[arg1].field_512,
                       sub_be75288d[arg1].field_768,
                       sub_be75288d[arg1].field_1024,
                       sub_be75288d[arg1].field_1280,
                       sub_be75288d[arg1].field_1536,
                       ceil32(sub_be75288d[arg1].field_1) + 288
            if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                revert with 0, 34
            if sub_be75288d[arg1].field_1792:
                if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                    if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                        mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                    if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                        mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                else:
                    if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                        mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                    else:
                        mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                        idx = ceil32(sub_be75288d[arg1].field_1) + 160
                        s = 0
                        while ceil32(sub_be75288d[arg1].field_1) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                            mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                        mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                    if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                        mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
            else:
                if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                    revert with 0, 34
                if not sub_be75288d[arg1].field_1793:
                    if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                        mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                    if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                        mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                else:
                    if 31 >= sub_be75288d[arg1].field_1793:
                        mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                    else:
                        mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                        idx = ceil32(sub_be75288d[arg1].field_1) + 160
                        s = 0
                        while ceil32(sub_be75288d[arg1].field_1) + sub_be75288d[arg1].field_1793 + 128 > idx:
                            mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                        mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                    if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                        mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
        else:
            if 31 < uint255(sub_be75288d[arg1].field_0) * 0.5:
                mem[128] = sub_be75288d[arg1].field_0
                idx = 128
                s = 0
                while (uint255(sub_be75288d[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = sub_be75288d[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if sub_be75288d[arg1].field_1792:
                    if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if sub_be75288d[arg1].field_1792:
                        if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if 31 < uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(sub_be75288d[arg1].field_1) + 160
                                s = 0
                                while ceil32(sub_be75288d[arg1].field_1) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                                    mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                return Array(len=sub_be75288d[arg1].field_0, data=mem[128 len ceil32(sub_be75288d[arg1].field_1)], uint255(sub_be75288d[arg1].field_1792) * 0.5, mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                                       sub_be75288d[arg1].field_256,
                                       sub_be75288d[arg1].field_512,
                                       sub_be75288d[arg1].field_768,
                                       sub_be75288d[arg1].field_1024,
                                       sub_be75288d[arg1].field_1280,
                                       sub_be75288d[arg1].field_1536,
                                       ceil32(sub_be75288d[arg1].field_1) + 288
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                    else:
                        if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                            revert with 0, 34
                        if sub_be75288d[arg1].field_1793:
                            if 31 < sub_be75288d[arg1].field_1793:
                                mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(sub_be75288d[arg1].field_1) + 160
                                s = 0
                                while ceil32(sub_be75288d[arg1].field_1) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                                    mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                return Array(len=sub_be75288d[arg1].field_0, data=mem[128 len ceil32(sub_be75288d[arg1].field_1)], uint255(sub_be75288d[arg1].field_1792) * 0.5, mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                                       sub_be75288d[arg1].field_256,
                                       sub_be75288d[arg1].field_512,
                                       sub_be75288d[arg1].field_768,
                                       sub_be75288d[arg1].field_1024,
                                       sub_be75288d[arg1].field_1280,
                                       sub_be75288d[arg1].field_1536,
                                       ceil32(sub_be75288d[arg1].field_1) + 288
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                    if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                        mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                    if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                        mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    return Array(len=sub_be75288d[arg1].field_0, data=mem[128 len ceil32(sub_be75288d[arg1].field_1)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                           sub_be75288d[arg1].field_256,
                           sub_be75288d[arg1].field_512,
                           sub_be75288d[arg1].field_768,
                           sub_be75288d[arg1].field_1024,
                           sub_be75288d[arg1].field_1280,
                           sub_be75288d[arg1].field_1536,
                           ceil32(sub_be75288d[arg1].field_1) + 288
                if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                    revert with 0, 34
                if sub_be75288d[arg1].field_1792:
                    if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, sub_be75288d[arg1].field_1792):
                        if 31 < uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                                mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                            return Array(len=sub_be75288d[arg1].field_0, data=mem[128 len ceil32(sub_be75288d[arg1].field_1)], sub_be75288d[arg1].field_1793, mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]), 
                                   sub_be75288d[arg1].field_256,
                                   sub_be75288d[arg1].field_512,
                                   sub_be75288d[arg1].field_768,
                                   sub_be75288d[arg1].field_1024,
                                   sub_be75288d[arg1].field_1280,
                                   sub_be75288d[arg1].field_1536,
                                   ceil32(sub_be75288d[arg1].field_1) + 288
                        mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                else:
                    if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                        revert with 0, 34
                    if sub_be75288d[arg1].field_1793:
                        if 31 < sub_be75288d[arg1].field_1793:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                                mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                            return Array(len=sub_be75288d[arg1].field_0, data=mem[128 len ceil32(sub_be75288d[arg1].field_1)], sub_be75288d[arg1].field_1793, mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]), 
                                   sub_be75288d[arg1].field_256,
                                   sub_be75288d[arg1].field_512,
                                   sub_be75288d[arg1].field_768,
                                   sub_be75288d[arg1].field_1024,
                                   sub_be75288d[arg1].field_1280,
                                   sub_be75288d[arg1].field_1536,
                                   ceil32(sub_be75288d[arg1].field_1) + 288
                        mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                    mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                    mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
            else:
                mem[128] = 256 * sub_be75288d[arg1].field_8
                if sub_be75288d[arg1].field_1792:
                    if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if sub_be75288d[arg1].field_1792:
                        if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                                mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                            else:
                                mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(sub_be75288d[arg1].field_1) + 160
                                s = 0
                                while ceil32(sub_be75288d[arg1].field_1) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                                mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    else:
                        if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                            revert with 0, 34
                        if not sub_be75288d[arg1].field_1793:
                            if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                                mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if 31 >= sub_be75288d[arg1].field_1793:
                                mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                            else:
                                mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(sub_be75288d[arg1].field_1) + 160
                                s = 0
                                while ceil32(sub_be75288d[arg1].field_1) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                                mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    return Array(len=sub_be75288d[arg1].field_0, data=mem[128 len ceil32(sub_be75288d[arg1].field_1)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                           sub_be75288d[arg1].field_256,
                           sub_be75288d[arg1].field_512,
                           sub_be75288d[arg1].field_768,
                           sub_be75288d[arg1].field_1024,
                           sub_be75288d[arg1].field_1280,
                           sub_be75288d[arg1].field_1536,
                           ceil32(sub_be75288d[arg1].field_1) + 288
                if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                    revert with 0, 34
                if sub_be75288d[arg1].field_1792:
                    if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                        if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                            mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                        if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                            mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                    else:
                        if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                        else:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                            mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                        if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                            mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                else:
                    if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                        revert with 0, 34
                    if not sub_be75288d[arg1].field_1793:
                        if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                            mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                        if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                            mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                    else:
                        if 31 >= sub_be75288d[arg1].field_1793:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                        else:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                            mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                        if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                            mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
    else:
        if sub_be75288d[arg1].field_0 == sub_be75288d[arg1].field_1 < 32:
            revert with 0, 34
        if not sub_be75288d[arg1].field_1:
            if sub_be75288d[arg1].field_1792:
                if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                    revert with 0, 34
                if sub_be75288d[arg1].field_1792:
                    if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                        if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                            mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    else:
                        if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                        else:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                            mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                else:
                    if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                        revert with 0, 34
                    if not sub_be75288d[arg1].field_1793:
                        if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                            mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    else:
                        if 31 >= sub_be75288d[arg1].field_1793:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                        else:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                            mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                return Array(len=sub_be75288d[arg1].field_0, data=mem[128 len ceil32(sub_be75288d[arg1].field_1)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                       sub_be75288d[arg1].field_256,
                       sub_be75288d[arg1].field_512,
                       sub_be75288d[arg1].field_768,
                       sub_be75288d[arg1].field_1024,
                       sub_be75288d[arg1].field_1280,
                       sub_be75288d[arg1].field_1536,
                       ceil32(sub_be75288d[arg1].field_1) + 288
            if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                revert with 0, 34
            if sub_be75288d[arg1].field_1792:
                if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                    if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                        mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                    if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                        mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                else:
                    if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                        mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                    else:
                        mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                        idx = ceil32(sub_be75288d[arg1].field_1) + 160
                        s = 0
                        while ceil32(sub_be75288d[arg1].field_1) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                            mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                        mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                    if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                        mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
            else:
                if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                    revert with 0, 34
                if not sub_be75288d[arg1].field_1793:
                    if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                        mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                    if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                        mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                else:
                    if 31 >= sub_be75288d[arg1].field_1793:
                        mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                    else:
                        mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                        idx = ceil32(sub_be75288d[arg1].field_1) + 160
                        s = 0
                        while ceil32(sub_be75288d[arg1].field_1) + sub_be75288d[arg1].field_1793 + 128 > idx:
                            mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                        mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                    if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                        mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
        else:
            if 31 < sub_be75288d[arg1].field_1:
                mem[128] = sub_be75288d[arg1].field_0
                idx = 128
                s = 0
                while sub_be75288d[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = sub_be75288d[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if sub_be75288d[arg1].field_1792:
                    if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if sub_be75288d[arg1].field_1792:
                        if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if 31 < uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(sub_be75288d[arg1].field_1) + 160
                                s = 0
                                while ceil32(sub_be75288d[arg1].field_1) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                                    mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                return Array(len=sub_be75288d[arg1].field_0, data=mem[128 len ceil32(sub_be75288d[arg1].field_1)], uint255(sub_be75288d[arg1].field_1792) * 0.5, mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                                       sub_be75288d[arg1].field_256,
                                       sub_be75288d[arg1].field_512,
                                       sub_be75288d[arg1].field_768,
                                       sub_be75288d[arg1].field_1024,
                                       sub_be75288d[arg1].field_1280,
                                       sub_be75288d[arg1].field_1536,
                                       ceil32(sub_be75288d[arg1].field_1) + 288
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                    else:
                        if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                            revert with 0, 34
                        if sub_be75288d[arg1].field_1793:
                            if 31 < sub_be75288d[arg1].field_1793:
                                mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(sub_be75288d[arg1].field_1) + 160
                                s = 0
                                while ceil32(sub_be75288d[arg1].field_1) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                                    mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                return Array(len=sub_be75288d[arg1].field_0, data=mem[128 len ceil32(sub_be75288d[arg1].field_1)], uint255(sub_be75288d[arg1].field_1792) * 0.5, mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                                       sub_be75288d[arg1].field_256,
                                       sub_be75288d[arg1].field_512,
                                       sub_be75288d[arg1].field_768,
                                       sub_be75288d[arg1].field_1024,
                                       sub_be75288d[arg1].field_1280,
                                       sub_be75288d[arg1].field_1536,
                                       ceil32(sub_be75288d[arg1].field_1) + 288
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                    if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                        mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                    if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                        mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    return Array(len=sub_be75288d[arg1].field_0, data=mem[128 len ceil32(sub_be75288d[arg1].field_1)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                           sub_be75288d[arg1].field_256,
                           sub_be75288d[arg1].field_512,
                           sub_be75288d[arg1].field_768,
                           sub_be75288d[arg1].field_1024,
                           sub_be75288d[arg1].field_1280,
                           sub_be75288d[arg1].field_1536,
                           ceil32(sub_be75288d[arg1].field_1) + 288
                if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                    revert with 0, 34
                if sub_be75288d[arg1].field_1792:
                    if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, sub_be75288d[arg1].field_1792):
                        if 31 < uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                                mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                            return Array(len=sub_be75288d[arg1].field_0, data=mem[128 len ceil32(sub_be75288d[arg1].field_1)], sub_be75288d[arg1].field_1793, mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]), 
                                   sub_be75288d[arg1].field_256,
                                   sub_be75288d[arg1].field_512,
                                   sub_be75288d[arg1].field_768,
                                   sub_be75288d[arg1].field_1024,
                                   sub_be75288d[arg1].field_1280,
                                   sub_be75288d[arg1].field_1536,
                                   ceil32(sub_be75288d[arg1].field_1) + 288
                        mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                else:
                    if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                        revert with 0, 34
                    if sub_be75288d[arg1].field_1793:
                        if 31 < sub_be75288d[arg1].field_1793:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                                mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                            return Array(len=sub_be75288d[arg1].field_0, data=mem[128 len ceil32(sub_be75288d[arg1].field_1)], sub_be75288d[arg1].field_1793, mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]), 
                                   sub_be75288d[arg1].field_256,
                                   sub_be75288d[arg1].field_512,
                                   sub_be75288d[arg1].field_768,
                                   sub_be75288d[arg1].field_1024,
                                   sub_be75288d[arg1].field_1280,
                                   sub_be75288d[arg1].field_1536,
                                   ceil32(sub_be75288d[arg1].field_1) + 288
                        mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                    mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                    mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
            else:
                mem[128] = 256 * sub_be75288d[arg1].field_8
                if sub_be75288d[arg1].field_1792:
                    if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if sub_be75288d[arg1].field_1792:
                        if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                                mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                            else:
                                mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(sub_be75288d[arg1].field_1) + 160
                                s = 0
                                while ceil32(sub_be75288d[arg1].field_1) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                                mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    else:
                        if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                            revert with 0, 34
                        if not sub_be75288d[arg1].field_1793:
                            if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                                mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if 31 >= sub_be75288d[arg1].field_1793:
                                mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                            else:
                                mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(sub_be75288d[arg1].field_1) + 160
                                s = 0
                                while ceil32(sub_be75288d[arg1].field_1) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                                mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    return Array(len=sub_be75288d[arg1].field_0, data=mem[128 len ceil32(sub_be75288d[arg1].field_1)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                           sub_be75288d[arg1].field_256,
                           sub_be75288d[arg1].field_512,
                           sub_be75288d[arg1].field_768,
                           sub_be75288d[arg1].field_1024,
                           sub_be75288d[arg1].field_1280,
                           sub_be75288d[arg1].field_1536,
                           ceil32(sub_be75288d[arg1].field_1) + 288
                if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                    revert with 0, 34
                if sub_be75288d[arg1].field_1792:
                    if sub_be75288d[arg1].field_1792 == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                        if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                            mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                        if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                            mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                    else:
                        if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                        else:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                            mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                        if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                            mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                else:
                    if sub_be75288d[arg1].field_1792 == sub_be75288d[arg1].field_1793 < 32:
                        revert with 0, 34
                    if not sub_be75288d[arg1].field_1793:
                        if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                            mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                        if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                            mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
                    else:
                        if 31 >= sub_be75288d[arg1].field_1793:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = 256 * sub_be75288d[arg1].field_1800
                        else:
                            mem[ceil32(sub_be75288d[arg1].field_1) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1) + sub_be75288d[arg1].field_1793 + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_be75288d[arg1].field_1) > sub_be75288d[arg1].field_1:
                            mem[sub_be75288d[arg1].field_1 + ceil32(sub_be75288d[arg1].field_1) + ceil32(sub_be75288d[arg1].field_1793) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 448] = sub_be75288d[arg1].field_1793
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480 len ceil32(sub_be75288d[arg1].field_1793)] = mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]
                        if ceil32(sub_be75288d[arg1].field_1793) > sub_be75288d[arg1].field_1793:
                            mem[sub_be75288d[arg1].field_1793 + (2 * ceil32(sub_be75288d[arg1].field_1)) + ceil32(sub_be75288d[arg1].field_1793) + 480] = 0
    return Array(len=sub_be75288d[arg1].field_0, data=mem[128 len ceil32(sub_be75288d[arg1].field_1)], sub_be75288d[arg1].field_1792, mem[ceil32(sub_be75288d[arg1].field_1) + 160 len ceil32(sub_be75288d[arg1].field_1793)]), 
           sub_be75288d[arg1].field_256,
           sub_be75288d[arg1].field_512,
           sub_be75288d[arg1].field_768,
           sub_be75288d[arg1].field_1024,
           sub_be75288d[arg1].field_1280,
           sub_be75288d[arg1].field_1536,
           ceil32(sub_be75288d[arg1].field_1) + 288
}



}
