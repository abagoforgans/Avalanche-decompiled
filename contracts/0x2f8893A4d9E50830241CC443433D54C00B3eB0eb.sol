contract main {




// =====================  Runtime code  =====================


const baseURI = 'ipfs://ipfs/', 0

const sub_6da612d8(?) = 5000

const sub_b8358715(?) = 5


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
address owner;
uint256 currentTokenId;
mapping of uint256 userBuys;
address beneficiaryAddress;
uint256 sub_3c51199f;
uint256 price;
uint8 sub_d6ffd7a7;
address sub_62c0be10Address; offset 8
uint256 poolLength;
mapping of struct pools;
mapping of uint256 sub_473017f7;
mapping of uint8 stor210;

function currentTokenId() {
    return currentTokenId
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function poolLength() {
    return poolLength
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_3c51199f(?) {
    return sub_3c51199f
}

function sub_473017f7(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 >= poolLength:
        revert with 0, 'BlindBox: empty pool'
    return sub_473017f7[arg1][address(arg2)]
}

function userBuys(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userBuys[arg1]
}

function sub_62c0be10(?) {
    return sub_62c0be10Address
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

function price() {
    return price
}

function pools(uint256 arg1) {
    require calldata.size - 4 >= 32
    return pools[arg1].field_0, pools[arg1].field_256, pools[arg1].field_512, pools[arg1].field_768
}

function sub_d6ffd7a7(?) {
    return bool(sub_d6ffd7a7)
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

function sub_0492524b(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d6ffd7a7 = uint8(bool(arg1))
}

function setBeneficiary(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    beneficiaryAddress = arg1
}

function sub_72b94bbb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_62c0be10Address = address(arg1)
}

function sub_f5366b31(?) {
    require calldata.size - 4 >= 160
    require calldata.size - 36 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pools[arg1].field_0 = arg2
    pools[arg1].field_256 = arg3
    pools[arg1].field_512 = arg4
    pools[arg1].field_768 = arg5
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

function sub_521d14f5(?) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pools[stor207].field_0 = arg1
    pools[stor207].field_256 = arg2
    pools[stor207].field_512 = arg3
    pools[stor207].field_768 = arg4
    if poolLength > -2:
        revert with 0, 17
    poolLength++
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

function open(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not sub_d6ffd7a7:
        revert with 0, 'BlindBox: Not start'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'BlindBox: not a owner'
    if not stor210[arg1]:
        revert with 0, 'BlindBox: type error'
    if stor210[arg1] >= 5:
        revert with 0, 'BlindBox: type error'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor103[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor103[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    require ext_code.size(sub_62c0be10Address)
    call sub_62c0be10Address.mint(address arg1, uint8 arg2) with:
         gas gas_remaining wei
        args msg.sender, stor210[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function setProofOfBlockRewards(uint256 arg1) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 210
        stor210[cd[((32 * idx) + arg1 + 36)]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        mem[0] = cd[((32 * idx) + cd[36] + 36)]
        mem[32] = 210
        stor210[cd[((32 * idx) + cd[36] + 36)]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 68).length:
        mem[0] = cd[((32 * idx) + cd[68] + 36)]
        mem[32] = 210
        stor210[cd[((32 * idx) + cd[68] + 36)]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 100).length:
        mem[0] = cd[((32 * idx) + cd[100] + 36)]
        mem[32] = 210
        stor210[cd[((32 * idx) + cd[100] + 36)]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_1969160b(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not sub_d6ffd7a7:
        revert with 0, 'BlindBox: Not start'
    idx = 0
    while idx < ('cd', 4).length:
        if not ownerOf[cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[cd[((32 * idx) + cd[4] + 36)]] != msg.sender:
            revert with 0, 'BlindBox: not a owner'
        if not stor210[cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0, 'BlindBox: type error'
        if stor210[cd[((32 * idx) + cd[4] + 36)]] >= 5:
            revert with 0, 'BlindBox: type error'
        if not ownerOf[cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        approved[cd[((32 * idx) + cd[4] + 36)]] = 0
        if not ownerOf[cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[cd[((32 * idx) + cd[4] + 36)]], 0, cd[((32 * idx) + cd[4] + 36)]);
        if balanceOf[stor103[cd[((32 * idx) + cd[4] + 36)]]] < 1:
            revert with 0, 17
        balanceOf[stor103[cd[((32 * idx) + cd[4] + 36)]]]--
        ownerOf[cd[((32 * idx) + cd[4] + 36)]] = 0
        emit Transfer(ownerOf[cd[((32 * idx) + cd[4] + 36)]], 0, cd[((32 * idx) + cd[4] + 36)]);
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 210
        mem[96] = 0x691562a000000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = stor210[cd[((32 * idx) + cd[4] + 36)]]
        require ext_code.size(sub_62c0be10Address)
        call sub_62c0be10Address.mint(address arg1, uint8 arg2) with:
             gas gas_remaining wei
            args msg.sender, stor210[cd[((32 * idx) + cd[4] + 36)]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0, 'Initializable: contract is not initializing'
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        stor101.length.field_1 = 22
        stor101.length.field_80 = 0x486f72736520526163696e6720426c696e6420426f78
        idx = 0
        while (uint255(stor101.length) * 0.5) + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        stor101.length.field_1 = 22
        stor101.length.field_80 = 0x486f72736520526163696e6720426c696e6420426f78
        idx = 0
        while stor101.length.field_1 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        stor102.length.field_1 = 4
        stor102.length.field_224 = 1213350466
        idx = 0
        while (uint255(stor102.length) * 0.5) + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        stor102.length.field_1 = 4
        stor102.length.field_224 = 1213350466
        idx = 0
        while stor102.length.field_1 + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not uint8(stor0.field_8):
        revert with 0, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    beneficiaryAddress = arg1
    currentTokenId = 1
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
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

function batchTransferFrom(address[] arg1, address[] arg2, uint256[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if arg3.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BlindBox: tos.length neq tokenIds.length neq froms.length'
    if arg1.length != arg3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BlindBox: tos.length neq tokenIds.length neq froms.length'
    idx = 0
    while idx < arg2.length:
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg3.length:
            revert with 0, 50
        if not ownerOf[cd[((32 * idx) + arg3 + 36)]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
        if not ownerOf[cd[((32 * idx) + arg3 + 36)]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if ownerOf[cd[((32 * idx) + arg3 + 36)]] != msg.sender:
            if not ownerOf[cd[((32 * idx) + arg3 + 36)]]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
            if approved[cd[((32 * idx) + arg3 + 36)]] != msg.sender:
                if not stor106[stor103[cd[((32 * idx) + arg3 + 36)]]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
        if not ownerOf[cd[((32 * idx) + arg3 + 36)]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if ownerOf[cd[((32 * idx) + arg3 + 36)]] != address(cd[((32 * idx) + arg1 + 36)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
        if not address(cd[((32 * idx) + arg2 + 36)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
        approved[cd[((32 * idx) + arg3 + 36)]] = 0
        if not ownerOf[cd[((32 * idx) + arg3 + 36)]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[cd[((32 * idx) + arg3 + 36)]], 0, cd[((32 * idx) + arg3 + 36)]);
        if balanceOf[address(cd[((32 * idx) + arg1 + 36)])] < 1:
            revert with 0, 17
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])]--
        if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] > -2:
            revert with 0, 17
        balanceOf[address(cd[((32 * idx) + arg2 + 36)])]++
        mem[0] = cd[((32 * idx) + arg3 + 36)]
        mem[32] = 103
        ownerOf[cd[((32 * idx) + arg3 + 36)]] = address(cd[((32 * idx) + arg2 + 36)])
        emit Transfer(address(cd[((32 * idx) + arg1 + 36)]), address(cd[((32 * idx) + arg2 + 36)]), cd[((32 * idx) + arg3 + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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

function batchMint(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if currentTokenId > !arg1:
        revert with 0, 17
    if currentTokenId + arg1 > 5000:
        revert with 0, 'BlindBox: tokenId max is 5000'
    if currentTokenId > !arg1:
        revert with 0, 17
    if var64002 >= currentTokenId + arg1:
        if currentTokenId > !arg1:
            revert with 0, 17
        currentTokenId += arg1
    mem[64] = 128
    mem[96] = 0
    s = var70002
    t = var70001
    u = var70002
    v = var70005
    v = var70008
    while arg2:
        if ownerOf[s]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(arg2)] > -2:
            revert with 0, 17
        balanceOf[address(arg2)]++
        mem[0] = s
        mem[32] = 103
        ownerOf[s] = arg2
        emit Transfer(0, arg2, s);
        if not ext_code.size(arg2):
            if v == -1:
                revert with 0, 17
            if currentTokenId > !arg1:
                revert with 0, 17
            if v + 1 >= currentTokenId + arg1:
                if currentTokenId > !arg1:
                    revert with 0, 17
                currentTokenId += arg1
            _345 = mem[64]
            mem[64] = mem[64] + 32
            mem[_345] = 0
            s = v + 1
            t = _345
            u = v + 1
            v = v + 1
            v = v + 1
            continue 
        _338 = mem[64]
        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = u
        mem[mem[64] + 100] = 128
        _339 = mem[t]
        mem[mem[64] + 132] = mem[t]
        idx = 0
        while idx < _339:
            mem[idx + mem[64] + 164] = mem[idx + t + 32]
            idx = idx + 32
            continue 
        if ceil32(_339) <= _339:
            require ext_code.size(arg2)
            call arg2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(_339) + _338 + -mem[64] + 160]
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
            _375 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_375] == Mask(32, 224, mem[_375])
            if Mask(32, 224, mem[_375]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if v == -1:
                revert with 0, 17
            if currentTokenId > !arg1:
                revert with 0, 17
            if v + 1 >= currentTokenId + arg1:
                if currentTokenId > !arg1:
                    revert with 0, 17
                currentTokenId += arg1
            _401 = mem[64]
            mem[64] = mem[64] + 32
            mem[_401] = 0
            s = v + 1
            t = _401
            u = v + 1
            v = v + 1
            v = v + 1
            continue 
        mem[_339 + _338 + 164] = 0
        require ext_code.size(arg2)
        call arg2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(_339) + _338 + -mem[64] + 160]
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
        _376 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_376] == Mask(32, 224, mem[_376])
        if Mask(32, 224, mem[_376]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if v == -1:
            revert with 0, 17
        if currentTokenId > !arg1:
            revert with 0, 17
        if v + 1 >= currentTokenId + arg1:
            if currentTokenId > !arg1:
                revert with 0, 17
            currentTokenId += arg1
        _402 = mem[64]
        mem[64] = mem[64] + 32
        mem[_402] = 0
        s = v + 1
        t = _402
        u = v + 1
        v = v + 1
        v = v + 1
        continue 
    revert with 0, 'ERC721: mint to the zero address'
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 103
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[96] = 12
    mem[128] = 'ipfs://ipfs/' << 160
    if not arg1:
        mem[256] = 'ipfs://ipfs/' << 160
        mem[268] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[269] = 32
        mem[301] = mem[224]
        mem[333 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
        if ceil32(mem[224]) > mem[224]:
            mem[mem[224] + 333] = 0
        return Array(len=mem[224], data=mem[333 len ceil32(mem[224])])
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
    mem[160] = s
    mem[64] = ceil32(s) + 192
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[160]:
                revert with 0, 50
            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _143 = mem[64]
        _145 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _237 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(_237) <= _237:
                _305 = mem[64]
                mem[64] = _237 + _143 + _145 + 32
                mem[_237 + _143 + _145 + 32] = 32
                _321 = mem[_305]
                mem[_237 + _143 + _145 + 64] = mem[_305]
                mem[_237 + _143 + _145 + 96 len ceil32(_321)] = mem[_305 + 32 len ceil32(_321)]
                if ceil32(_321) > _321:
                    mem[_321 + _237 + _143 + _145 + 96] = 0
                return 32, mem[_237 + _143 + _145 + 64 len ceil32(_321) + 32]
            mem[_237 + _143 + _145 + 32] = 0
            _306 = mem[64]
            mem[64] = _237 + _143 + _145 + 32
            mem[_237 + _143 + _145 + 32] = 32
            _322 = mem[_306]
            mem[_237 + _143 + _145 + 64] = mem[_306]
            mem[_237 + _143 + _145 + 96 len ceil32(_322)] = mem[_306 + 32 len ceil32(_322)]
            if ceil32(_322) > _322:
                mem[_322 + _237 + _143 + _145 + 96] = 0
            return 32, mem[_237 + _143 + _145 + 64 len ceil32(_322) + 32]
        mem[mem[96] + mem[64] + 32] = 0
        _238 = mem[160]
        mem[_143 + _145 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_238) <= _238:
            _307 = mem[64]
            mem[64] = _238 + _143 + _145 + 32
            mem[_238 + _143 + _145 + 32] = 32
            _323 = mem[_307]
            mem[_238 + _143 + _145 + 64] = mem[_307]
            mem[_238 + _143 + _145 + 96 len ceil32(_323)] = mem[_307 + 32 len ceil32(_323)]
            if ceil32(_323) > _323:
                mem[_323 + _238 + _143 + _145 + 96] = 0
            return 32, mem[_238 + _143 + _145 + 64 len ceil32(_323) + 32]
        mem[_238 + _143 + _145 + 32] = 0
        _308 = mem[64]
        mem[64] = _238 + _143 + _145 + 32
        mem[_238 + _143 + _145 + 32] = 32
        _324 = mem[_308]
        mem[_238 + _143 + _145 + 64] = mem[_308]
        mem[_238 + _143 + _145 + 96 len ceil32(_324)] = mem[_308 + 32 len ceil32(_324)]
        if ceil32(_324) > _324:
            mem[_324 + _238 + _143 + _145 + 96] = 0
        return 32, mem[_238 + _143 + _145 + 64 len ceil32(_324) + 32]
    mem[192 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[160]:
            revert with 0, 50
        mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _144 = mem[64]
    _146 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _239 = mem[160]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_239) <= _239:
            _309 = mem[64]
            mem[64] = _239 + _144 + _146 + 32
            mem[_239 + _144 + _146 + 32] = 32
            _325 = mem[_309]
            mem[_239 + _144 + _146 + 64] = mem[_309]
            mem[_239 + _144 + _146 + 96 len ceil32(_325)] = mem[_309 + 32 len ceil32(_325)]
            if ceil32(_325) > _325:
                mem[_325 + _239 + _144 + _146 + 96] = 0
            return 32, mem[_239 + _144 + _146 + 64 len ceil32(_325) + 32]
        mem[_239 + _144 + _146 + 32] = 0
        _310 = mem[64]
        mem[64] = _239 + _144 + _146 + 32
        mem[_239 + _144 + _146 + 32] = 32
        _326 = mem[_310]
        mem[_239 + _144 + _146 + 64] = mem[_310]
        mem[_239 + _144 + _146 + 96 len ceil32(_326)] = mem[_310 + 32 len ceil32(_326)]
        if ceil32(_326) > _326:
            mem[_326 + _239 + _144 + _146 + 96] = 0
        return 32, mem[_239 + _144 + _146 + 64 len ceil32(_326) + 32]
    mem[mem[96] + mem[64] + 32] = 0
    _240 = mem[160]
    mem[_144 + _146 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
    if ceil32(_240) <= _240:
        _311 = mem[64]
        mem[64] = _240 + _144 + _146 + 32
        mem[_240 + _144 + _146 + 32] = 32
        _327 = mem[_311]
        mem[_240 + _144 + _146 + 64] = mem[_311]
        mem[_240 + _144 + _146 + 96 len ceil32(_327)] = mem[_311 + 32 len ceil32(_327)]
        if ceil32(_327) > _327:
            mem[_327 + _240 + _144 + _146 + 96] = 0
        return 32, mem[_240 + _144 + _146 + 64 len ceil32(_327) + 32]
    mem[_240 + _144 + _146 + 32] = 0
    _312 = mem[64]
    mem[64] = _240 + _144 + _146 + 32
    mem[_240 + _144 + _146 + 32] = 32
    _328 = mem[_312]
    mem[_240 + _144 + _146 + 64] = mem[_312]
    mem[_240 + _144 + _146 + 96 len ceil32(_328)] = mem[_312 + 32 len ceil32(_328)]
    if ceil32(_328) > _328:
        mem[_328 + _240 + _144 + _146 + 96] = 0
    return 32, mem[_240 + _144 + _146 + 64 len ceil32(_328) + 32]
}

function buy(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= poolLength:
        revert with 0, 'BlindBox: empty pool'
    mem[96] = pools[arg1].field_0
    mem[128] = pools[arg1].field_256
    mem[160] = pools[arg1].field_512
    mem[192] = pools[arg1].field_768
    if block.timestamp < pools[arg1].field_512:
        revert with 0, 'BlindBox: not start'
    if block.timestamp > pools[arg1].field_768:
        revert with 0, 'BlindBox: ended'
    if arg2 and pools[arg1].field_0 > -1 / arg2:
        revert with 0, 17
    if arg2 * pools[arg1].field_0 != msg.value:
        revert with 0, 'BlindBox: msg.value is not correct'
    if currentTokenId > !arg2:
        revert with 0, 17
    if currentTokenId + arg2 < 1:
        revert with 0, 17
    if currentTokenId + arg2 - 1 > pools[arg1].field_256:
        revert with 0, 'BlindBox: Sold Out'
    mem[0] = msg.sender
    mem[32] = sha3(arg1, 209)
    if sub_473017f7[arg1][msg.sender] > !arg2:
        revert with 0, 17
    if sub_473017f7[arg1][msg.sender] + arg2 > 5:
        revert with 0, 'BlindBox: user only buy fives'
    if currentTokenId > !arg2:
        revert with 0, 17
    if var73002 < currentTokenId + arg2:
        mem[64] = 256
        mem[224] = 0
        s = var79002
        t = var79001
        u = var79002
        v = var79005
        v = var79008
        while msg.sender:
            if ownerOf[s]:
                revert with 0, 'ERC721: token already minted'
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = s
            mem[32] = 103
            ownerOf[s] = msg.sender
            emit Transfer(0, msg.sender, s);
            if not ext_code.size(msg.sender):
                if v == -1:
                    revert with 0, 17
                if currentTokenId > !arg2:
                    revert with 0, 17
                if v + 1 < currentTokenId + arg2:
                    _445 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_445] = 0
                    s = v + 1
                    t = _445
                    u = v + 1
                    v = v + 1
                    v = v + 1
                    continue 
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = u
                mem[mem[64] + 100] = 128
                _439 = mem[t]
                mem[mem[64] + 132] = mem[t]
                idx = 0
                while idx < _439:
                    mem[idx + mem[64] + 164] = mem[idx + t + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_439) <= _439:
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_439) + 32]
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
                    _490 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_490] == Mask(32, 224, mem[_490])
                    if Mask(32, 224, mem[_490]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if v == -1:
                        revert with 0, 17
                    if currentTokenId > !arg2:
                        revert with 0, 17
                    if v + 1 < currentTokenId + arg2:
                        _516 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_516] = 0
                        s = v + 1
                        t = _516
                        u = v + 1
                        v = v + 1
                        v = v + 1
                        continue 
                else:
                    mem[_439 + mem[64] + 164] = 0
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, u, 128, mem[mem[64] + 132 len ceil32(_439) + 32]
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
                    _491 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_491] == Mask(32, 224, mem[_491])
                    if Mask(32, 224, mem[_491]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if v == -1:
                        revert with 0, 17
                    if currentTokenId > !arg2:
                        revert with 0, 17
                    if v + 1 < currentTokenId + arg2:
                        _517 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_517] = 0
                        s = v + 1
                        t = _517
                        u = v + 1
                        v = v + 1
                        v = v + 1
                        continue 
            ('ge', ('add', 1, ('var', 4)), ('add', ('stor', ('name', 'currentTokenId', 201)), ('param', 'arg2')))
            if currentTokenId > !arg2:
                revert with 0, 17
            currentTokenId += arg2
            if sub_473017f7[arg1][msg.sender] > !arg2:
                revert with 0, 17
            sub_473017f7[arg1][msg.sender] += arg2
            call beneficiaryAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Buy(arg2, msg.sender);
        revert with 0, 'ERC721: mint to the zero address'
    if currentTokenId > !arg2:
        revert with 0, 17
    currentTokenId += arg2
    if sub_473017f7[arg1][msg.sender] > !arg2:
        revert with 0, 17
    sub_473017f7[arg1][msg.sender] += arg2
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Buy(arg2, msg.sender);
}



}
