contract main {




// =====================  Runtime code  =====================


#
#  - sub_987eef64(?)
#
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
address owner;
mapping of uint8 stor201;
address lpAddress;
address stor203;
uint256 comm;
uint256 fee;
array of struct stor206;
uint256 maxSupply;
uint8 sub_ca4ad263;
uint32 stor209;
uint256 stor209;
mapping of struct lands;
array of uint256 stor211;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return stor211.length
}

function lp() {
    return lpAddress
}

function comm() {
    return comm
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function authorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor201[arg1])
}

function sub_ca4ad263(?) {
    return bool(sub_ca4ad263)
}

function maxSupply() {
    return maxSupply
}

function fee() {
    return fee
}

function lands(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lands[arg1].field_0, lands[arg1].field_0, lands[arg1].field_0, lands[arg1].field_256, bool(lands[arg1].field_512)
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

function addAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    stor201[address(arg1)] = 1
}

function removeAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    require arg1 != msg.sender
    stor201[address(arg1)] = 0
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
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
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function setPriceForSale(uint256 arg1, uint256 arg2, bool arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'not owner'
    lands[arg1].field_24 = lands[arg1].field_24
    lands[arg1].field_48 = lands[arg1].field_48
    lands[arg1].field_256 = arg2
    lands[arg1].field_512 = uint8(arg3)
    emit SaleToggle(arg1, arg3, arg2);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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

function sub_49b993ac(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg3.length) + 128 > test266151307() or ceil32(arg3.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == bool(arg4)
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lpAddress = address(arg1)
    comm = arg2
    if bool(stor206.length):
        if bool(stor206.length) == stor206.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor206[].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor206.length = 0
            idx = 0
            while stor206.length.field_1 + 31 / 32 > idx:
                stor206[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor206.length) == stor206.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor206[].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor206.length = 0
            idx = 0
            while stor206.length.field_1 + 31 / 32 > idx:
                stor206[idx].field_0 = 0
                idx = idx + 1
                continue 
    sub_ca4ad263 = uint8(bool(arg4))
    fee = arg5
}

function buyToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ownerOf[arg1]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] != msg.sender
    if msg.value < lands[arg1].field_256:
        revert with 0, 'not enough money'
    require lands[arg1].field_512
    lands[arg1].field_24 = lands[arg1].field_24
    lands[arg1].field_48 = lands[arg1].field_48
    lands[arg1].field_512 = uint8(bool(lands[arg1].field_512))
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if msg.value > 0:
        if msg.value and comm > -1 / msg.value:
            revert with 'NH{q', 17
        call stor203 with:
           value msg.value * comm / 100 wei
             gas gas_remaining wei
        require ext_call.success
        if msg.value < msg.value * comm / 100:
            revert with 'NH{q', 17
        call ownerOf[arg1] with:
           value msg.value - (msg.value * comm / 100) wei
             gas gas_remaining wei
        require ext_call.success
        emit 0x4fd421e8: ownerOf[arg1], msg.sender, msg.value, msg.value * comm / 100
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not msg.sender:
        revert with 0, 'ERC721: transfer to the zero address'
    lands[arg1].field_24 = lands[arg1].field_24
    lands[arg1].field_48 = msg.sender
    lands[arg1].field_512 = 0
    if not ownerOf[arg1]:
        stor211.length++
        stor211[stor211.length] = arg1
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor103[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor103[arg1]]--
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    emit Transfer(ownerOf[arg1], msg.sender, arg1);
    emit Purchase(arg1, lands[arg1].field_0, msg.sender, lands[arg1].field_256);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'not owner nor approved'
    if msg.value > 0:
        if msg.value and comm > -1 / msg.value:
            revert with 'NH{q', 17
        call stor203 with:
           value msg.value * comm / 100 wei
             gas gas_remaining wei
        require ext_call.success
        if msg.value < msg.value * comm / 100:
            revert with 'NH{q', 17
        call arg1 with:
           value msg.value - (msg.value * comm / 100) wei
             gas gas_remaining wei
        require ext_call.success
        emit 0x4fd421e8: address(arg1), address(arg2), msg.value, msg.value * comm / 100
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    lands[arg3].field_24 = lands[arg3].field_24
    lands[arg3].field_48 = arg2
    lands[arg3].field_512 = 0
    if not arg1:
        stor211.length++
        stor211[stor211.length] = arg3
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, 128, 0
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'not owner nor approved'
    if msg.value <= 0:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    else:
        if msg.value and comm > -1 / msg.value:
            revert with 'NH{q', 17
        call stor203 with:
           value msg.value * comm / 100 wei
             gas gas_remaining wei
        require ext_call.success
        if msg.value < msg.value * comm / 100:
            revert with 'NH{q', 17
        call arg1 with:
           value msg.value - (msg.value * comm / 100) wei
             gas gas_remaining wei
        require ext_call.success
        emit 0x4fd421e8: address(arg1), address(arg2), msg.value, msg.value * comm / 100
        if not return_data.size:
            if not return_data.size:
                if not ownerOf[arg3]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                if ownerOf[arg3] != arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
            else:
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[arg3] != arg1:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not arg2:
                    revert with 0, 'ERC721: transfer to the zero address'
        else:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg3] != arg1:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not arg2:
                revert with 0, 'ERC721: transfer to the zero address'
    ('bool', ('param', 'arg2'))
    lands[arg3].field_24 = lands[arg3].field_24
    lands[arg3].field_48 = arg2
    lands[arg3].field_512 = 0
    if not arg1:
        stor211.length++
        stor211[stor211.length] = arg3
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
        revert with 'NH{q', 65
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
                revert with 0, 'not owner nor approved'
    if msg.value > 0:
        if msg.value and comm > -1 / msg.value:
            revert with 'NH{q', 17
        call stor203 with:
           value msg.value * comm / 100 wei
             gas gas_remaining wei
        require ext_call.success
        if msg.value < msg.value * comm / 100:
            revert with 'NH{q', 17
        call arg1 with:
           value msg.value - (msg.value * comm / 100) wei
             gas gas_remaining wei
        require ext_call.success
        if return_data.size:
            emit 0x4fd421e8: address(arg1), address(arg2), msg.value, msg.value * comm / 100
        else:
            if return_data.size:
                emit 0x4fd421e8: address(arg1), address(arg2), msg.value, msg.value * comm / 100
            else:
                mem[ceil32(arg4.length) + 128] = arg1
                mem[ceil32(arg4.length) + 160] = arg2
                emit 0x4fd421e8: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32], msg.value, msg.value * comm / 100
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    lands[arg3].field_24 = lands[arg3].field_24
    lands[arg3].field_48 = arg2
    lands[arg3].field_512 = 0
    if not arg1:
        stor211.length++
        stor211[stor211.length] = arg3
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
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
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor101.length):
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
        if ceil32(stor101.length.field_1) > stor101.length.field_1:
            mem[ceil32(stor101.length.field_1) + stor101.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor101.length.field_1) + stor101.length.field_1 + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
}

function symbol() {
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor102.length):
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
        if ceil32(stor102.length.field_1) > stor102.length.field_1:
            mem[ceil32(stor102.length.field_1) + stor102.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor102.length.field_1) + stor102.length.field_1 + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
}

function baseURL() {
    if bool(stor206.length):
        if bool(stor206.length) == stor206.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor206.length):
            if bool(stor206.length) == stor206.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor206.length.field_1:
                if 31 < stor206.length.field_1:
                    mem[128] = uint256(stor206.field_0)
                    idx = 128
                    s = 0
                    while stor206.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor206[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor206.length.field_1), data=mem[128 len ceil32(stor206.length.field_1)])
                mem[128] = 256 * stor206.length.field_8
        else:
            if bool(stor206.length) == stor206.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor206.length.field_1:
                if 31 < stor206.length.field_1:
                    mem[128] = uint256(stor206.field_0)
                    idx = 128
                    s = 0
                    while stor206.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor206[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor206.length.field_1), data=mem[128 len ceil32(stor206.length.field_1)])
                mem[128] = 256 * stor206.length.field_8
        mem[ceil32(stor206.length.field_1) + 192 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
        if ceil32(stor206.length.field_1) > stor206.length.field_1:
            mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor206.length.field_1), data=mem[128 len ceil32(stor206.length.field_1)], mem[(2 * ceil32(stor206.length.field_1)) + 192 len 2 * ceil32(stor206.length.field_1)]), 
    if bool(stor206.length) == stor206.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor206.length):
        if bool(stor206.length) == stor206.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor206.length.field_1:
            if 31 < stor206.length.field_1:
                mem[128] = uint256(stor206.field_0)
                idx = 128
                s = 0
                while stor206.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor206[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor206.length % 128, data=mem[128 len ceil32(stor206.length.field_1)])
            mem[128] = 256 * stor206.length.field_8
    else:
        if bool(stor206.length) == stor206.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor206.length.field_1:
            if 31 < stor206.length.field_1:
                mem[128] = uint256(stor206.field_0)
                idx = 128
                s = 0
                while stor206.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor206[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor206.length % 128, data=mem[128 len ceil32(stor206.length.field_1)])
            mem[128] = 256 * stor206.length.field_8
    mem[ceil32(stor206.length.field_1) + 192 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
    if ceil32(stor206.length.field_1) > stor206.length.field_1:
        mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 192] = 0
    return Array(len=stor206.length % 128, data=mem[128 len ceil32(stor206.length.field_1)], mem[(2 * ceil32(stor206.length.field_1)) + 192 len 2 * ceil32(stor206.length.field_1)]), 
}

function mint() {
    if bool(sub_ca4ad263) != 1:
        revert with 0, 'not open'
    if stor211.length >= maxSupply:
        revert with 0, 'max supply'
    mem[100] = msg.sender
    require ext_code.size(lpAddress)
    staticcall lpAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < fee:
        revert with 0, 'not enough LP'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = 57005
    mem[ceil32(return_data.size) + 164] = fee
    require ext_code.size(lpAddress)
    call lpAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 57005, fee
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    uint256(stor209)++
    mem[(2 * ceil32(return_data.size)) + 96] = 0
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor209 % 16777216]:
        revert with 0, 'ERC721: token already minted'
    mem[(2 * ceil32(return_data.size)) + 128] = lands[stor209 % 16777216].field_0
    mem[(2 * ceil32(return_data.size)) + 160] = lands[stor209 % 16777216].field_24
    mem[(2 * ceil32(return_data.size)) + 224] = lands[stor209 % 16777216].field_256
    mem[(2 * ceil32(return_data.size)) + 192] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 256] = 0
    lands[stor209 % 16777216].field_24 = lands[stor209 % 16777216].field_24
    lands[stor209 % 16777216].field_48 = msg.sender
    lands[stor209 % 16777216].field_512 = 0
    stor211.length++
    stor211[stor211.length] = stor209 % 16777216
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor209 % 16777216] = msg.sender
    emit Transfer(0, msg.sender, stor209 % 16777216);
    if ext_code.size(msg.sender) > 0:
        mem[(2 * ceil32(return_data.size)) + 292] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 324] = 0
        mem[(2 * ceil32(return_data.size)) + 356] = stor209 % 16777216
        mem[(2 * ceil32(return_data.size)) + 388] = 128
        mem[(2 * ceil32(return_data.size)) + 420] = 0
        mem[(2 * ceil32(return_data.size)) + 452 len 0] = None
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, stor209 % 16777216, 128, 0
        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            if not return_data.size:
                if not ext_call.return_data[0]:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    lands[stor209 % 16777216].field_0 = 1
    lands[stor209 % 16777216].field_8 = 0
    lands[stor209 % 16777216].field_24 = 1
    lands[stor209 % 16777216].field_32 = 0
    lands[stor209 % 16777216].field_48 = msg.sender
    lands[stor209 % 16777216].field_256 = fee
    lands[stor209 % 16777216].field_512 = 0
}

function airdrop(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        uint256(stor209)++
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        _74 = mem[64]
        mem[64] = mem[64] + 32
        mem[_74] = 0
        if not address(cd[((32 * idx) + arg1 + 36)]):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor209 % 16777216]:
            revert with 0, 'ERC721: token already minted'
        mem[0] = stor209 % 16777216
        mem[32] = 210
        _79 = mem[64]
        mem[64] = mem[64] + 160
        mem[_79] = lands[stor209 % 16777216].field_0
        mem[_79 + 32] = lands[stor209 % 16777216].field_24
        mem[_79 + 96] = lands[stor209 % 16777216].field_256
        mem[_79 + 64] = address(cd[((32 * idx) + arg1 + 36)])
        mem[_79 + 128] = 0
        lands[stor209 % 16777216].field_24 = lands[stor209 % 16777216].field_24
        lands[stor209 % 16777216].field_48 = address(cd[((32 * idx) + arg1 + 36)])
        lands[stor209 % 16777216].field_512 = 0
        stor211.length++
        stor211[stor211.length] = stor209 % 16777216
        if balanceOf[address(cd[((32 * idx) + arg1 + 36)])] > -2:
            revert with 'NH{q', 17
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])]++
        mem[0] = stor209 % 16777216
        mem[32] = 103
        ownerOf[stor209 % 16777216] = address(cd[((32 * idx) + arg1 + 36)])
        emit Transfer(0, address(cd[((32 * idx) + arg1 + 36)]), stor209 % 16777216);
        if ext_code.size(address(cd[((32 * idx) + arg1 + 36)])) <= 0:
            _94 = mem[64]
            mem[64] = mem[64] + 160
            mem[_94] = 1
            mem[_94 + 32] = 1
            if idx >= arg1.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[_94 + 64] = address(cd[((32 * idx) + arg1 + 36)])
            mem[_94 + 96] = 0
            mem[_94 + 128] = 0
        else:
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = stor209 % 16777216
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 164] = mem[_74 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, stor209 % 16777216, 128, 0
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
            _148 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_148] == Mask(32, 224, mem[_148])
            if Mask(32, 224, mem[_148]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            _172 = mem[64]
            mem[64] = mem[64] + 160
            mem[_172] = 1
            mem[_172 + 32] = 1
            if idx >= arg1.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[_172 + 64] = address(cd[((32 * idx) + arg1 + 36)])
            mem[_172 + 96] = 0
            mem[_172 + 128] = 0
        mem[0] = stor209 % 16777216
        mem[32] = 210
        lands[stor209 % 16777216].field_0 = 1
        lands[stor209 % 16777216].field_8 = 0
        lands[stor209 % 16777216].field_24 = 1
        lands[stor209 % 16777216].field_32 = 0
        lands[stor209 % 16777216].field_48 = address(cd[((32 * idx) + arg1 + 36)])
        lands[stor209 % 16777216].field_256 = 0
        lands[stor209 % 16777216].field_512 = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 103
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor206.length):
        if bool(stor206.length) == stor206.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor206.length.field_1
        if bool(stor206.length):
            if bool(stor206.length) == stor206.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor206.length.field_1:
                if stor206.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor206.length.field_1) + 224 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
                    mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 224] = '0'
                    mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 225] = 32
                    mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 257] = mem[ceil32(stor206.length.field_1) + 192]
                    mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])] = mem[ceil32(stor206.length.field_1) + 224 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor206.length.field_1) + 192]) > mem[ceil32(stor206.length.field_1) + 192]:
                        mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor206.length.field_1) + 192], data=mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]), 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor206.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor206.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor206.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor206.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
                if ceil32(stor206.length.field_1) > stor206.length.field_1:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192] = 0
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
            else:
                if 31 < stor206.length.field_1:
                    mem[128] = uint256(stor206.field_0)
                    idx = 128
                    s = 0
                    while stor206.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor206[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor206.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor206.length.field_1) + 224 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
                        mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 224] = '0'
                        mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 225] = 32
                        mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 257] = mem[ceil32(stor206.length.field_1) + 192]
                        mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])] = mem[ceil32(stor206.length.field_1) + 224 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor206.length.field_1) + 192]) > mem[ceil32(stor206.length.field_1) + 192]:
                            mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor206.length.field_1) + 192], data=mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]), 
                    s = 0
                    idx = arg1
                    while idx:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 'NH{q', 65
                    mem[ceil32(stor206.length.field_1) + 128] = s
                    if s:
                        mem[ceil32(stor206.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor206.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor206.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
                    if ceil32(stor206.length.field_1) > stor206.length.field_1:
                        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192] = 0
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
                else:
                    mem[128] = 256 * stor206.length.field_8
                    if stor206.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor206.length.field_1) + 224 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
                        mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 224] = '0'
                        mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 225] = 32
                        mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 257] = mem[ceil32(stor206.length.field_1) + 192]
                        mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])] = mem[ceil32(stor206.length.field_1) + 224 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor206.length.field_1) + 192]) > mem[ceil32(stor206.length.field_1) + 192]:
                            mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor206.length.field_1) + 192], data=mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]), 
                    s = 0
                    idx = arg1
                    while idx:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 'NH{q', 65
                    mem[ceil32(stor206.length.field_1) + 128] = s
                    if s:
                        mem[ceil32(stor206.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor206.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor206.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
                    if ceil32(stor206.length.field_1) > stor206.length.field_1:
                        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192] = 0
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
                    mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
        else:
            if bool(stor206.length) == stor206.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor206.length.field_1:
                if 31 >= stor206.length.field_1:
                    mem[128] = 256 * stor206.length.field_8
                else:
                    mem[128] = uint256(stor206.field_0)
                    idx = 128
                    s = 0
                    while stor206.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor206[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
            if stor206.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor206.length.field_1) + 224 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
                mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 224] = '0'
                mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 225] = 32
                mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 257] = mem[ceil32(stor206.length.field_1) + 192]
                mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])] = mem[ceil32(stor206.length.field_1) + 224 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor206.length.field_1) + 192]) > mem[ceil32(stor206.length.field_1) + 192]:
                    mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor206.length.field_1) + 192], data=mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor206.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor206.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor206.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor206.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
            if ceil32(stor206.length.field_1) > stor206.length.field_1:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192] = 0
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor206.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor206.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + mem[ceil32(stor206.length.field_1) + ceil32(s) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor206.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor206.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor206.length) == stor206.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor206.length.field_1
    if bool(stor206.length):
        if bool(stor206.length) == stor206.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor206.length.field_1:
            if stor206.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor206.length.field_1) + 224 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
                mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 224] = '0'
                mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 225] = 32
                mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 257] = mem[ceil32(stor206.length.field_1) + 192]
                mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])] = mem[ceil32(stor206.length.field_1) + 224 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor206.length.field_1) + 192]) > mem[ceil32(stor206.length.field_1) + 192]:
                    mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor206.length.field_1) + 192], data=mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor206.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor206.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor206.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
                if ceil32(stor206.length.field_1) <= stor206.length.field_1:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
                    mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
                        _3686 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3686)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3686)]
                        if ceil32(_3686) > _3686:
                            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3686 + 256] = 0
                        return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3686) + 32], 
                    _3718 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3718)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3718)]
                    if ceil32(_3718) > _3718:
                        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3718 + 256] = 0
                    return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3718) + 32], 
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192] = 0
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
                mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
                    _3687 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3687)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3687)]
                    if ceil32(_3687) > _3687:
                        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3687 + 256] = 0
                    return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3687) + 32], 
                _3719 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3719)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3719)]
                if ceil32(_3719) > _3719:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3719 + 256] = 0
                return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3719) + 32], 
            mem[ceil32(stor206.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor206.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor206.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
            if ceil32(stor206.length.field_1) <= stor206.length.field_1:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
                mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
                    _3688 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3688)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3688)]
                    if ceil32(_3688) > _3688:
                        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3688 + 256] = 0
                    return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3688) + 32], 
                _3720 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3720)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3720)]
                if ceil32(_3720) > _3720:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3720 + 256] = 0
                return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3720) + 32], 
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192] = 0
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
            mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
                _3689 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3689)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3689)]
                if ceil32(_3689) > _3689:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3689 + 256] = 0
                return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3689) + 32], 
            _3721 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3721)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3721)]
            if ceil32(_3721) > _3721:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3721 + 256] = 0
            return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3721) + 32], 
        if 31 >= stor206.length.field_1:
            mem[128] = 256 * stor206.length.field_8
            if stor206.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor206.length.field_1) + 224 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
                mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 224] = '0'
                mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 225] = 32
                mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 257] = mem[ceil32(stor206.length.field_1) + 192]
                mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])] = mem[ceil32(stor206.length.field_1) + 224 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor206.length.field_1) + 192]) > mem[ceil32(stor206.length.field_1) + 192]:
                    mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor206.length.field_1) + 192], data=mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor206.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor206.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor206.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
                if ceil32(stor206.length.field_1) <= stor206.length.field_1:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
                    mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
                        _3690 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3690)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3690)]
                        if ceil32(_3690) > _3690:
                            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3690 + 256] = 0
                        return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3690) + 32], 
                    _3722 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3722)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3722)]
                    if ceil32(_3722) > _3722:
                        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3722 + 256] = 0
                    return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3722) + 32], 
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192] = 0
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
                mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
                    _3691 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3691)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3691)]
                    if ceil32(_3691) > _3691:
                        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3691 + 256] = 0
                    return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3691) + 32], 
                _3723 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3723)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3723)]
                if ceil32(_3723) > _3723:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3723 + 256] = 0
                return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3723) + 32], 
            mem[ceil32(stor206.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor206.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor206.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
            if ceil32(stor206.length.field_1) <= stor206.length.field_1:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
                mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
                    _3692 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3692)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3692)]
                    if ceil32(_3692) > _3692:
                        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3692 + 256] = 0
                    return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3692) + 32], 
                _3724 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3724)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3724)]
                if ceil32(_3724) > _3724:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3724 + 256] = 0
                return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3724) + 32], 
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192] = 0
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
            mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
                _3693 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3693)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3693)]
                if ceil32(_3693) > _3693:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3693 + 256] = 0
                return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3693) + 32], 
            _3725 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3725)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3725)]
            if ceil32(_3725) > _3725:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3725 + 256] = 0
            return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3725) + 32], 
        mem[0] = 206
        mem[128] = uint256(stor206.field_0)
        idx = 128
        s = 0
        while stor206.length.field_1 + 96 > idx:
            mem[idx + 32] = stor206[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor206.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor206.length.field_1) + 224 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
            mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 224] = '0'
            mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 225] = 32
            mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 257] = mem[ceil32(stor206.length.field_1) + 192]
            mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])] = mem[ceil32(stor206.length.field_1) + 224 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor206.length.field_1) + 192]) > mem[ceil32(stor206.length.field_1) + 192]:
                mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor206.length.field_1) + 192], data=mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor206.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor206.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor206.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
            if ceil32(stor206.length.field_1) <= stor206.length.field_1:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
                mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
                    _4414 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_4414)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_4414)]
                    if ceil32(_4414) > _4414:
                        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _4414 + 256] = 0
                    return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_4414) + 32], 
                _4430 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_4430)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_4430)]
                if ceil32(_4430) > _4430:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _4430 + 256] = 0
                return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_4430) + 32], 
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192] = 0
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
            mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
                _4415 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_4415)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_4415)]
                if ceil32(_4415) > _4415:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _4415 + 256] = 0
                return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_4415) + 32], 
            _4431 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_4431)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_4431)]
            if ceil32(_4431) > _4431:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _4431 + 256] = 0
            return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_4431) + 32], 
        mem[ceil32(stor206.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor206.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor206.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
        if ceil32(stor206.length.field_1) <= stor206.length.field_1:
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
            mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
                _4416 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_4416)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_4416)]
                if ceil32(_4416) > _4416:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _4416 + 256] = 0
                return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_4416) + 32], 
            _4432 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_4432)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_4432)]
            if ceil32(_4432) > _4432:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _4432 + 256] = 0
            return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_4432) + 32], 
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192] = 0
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
        mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
            _4417 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_4417)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_4417)]
            if ceil32(_4417) > _4417:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _4417 + 256] = 0
            return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_4417) + 32], 
        _4433 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_4433)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_4433)]
        if ceil32(_4433) > _4433:
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _4433 + 256] = 0
        return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_4433) + 32], 
    if bool(stor206.length) == stor206.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor206.length.field_1:
        if stor206.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor206.length.field_1) + 224 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
            mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 224] = '0'
            mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 225] = 32
            mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 257] = mem[ceil32(stor206.length.field_1) + 192]
            mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])] = mem[ceil32(stor206.length.field_1) + 224 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor206.length.field_1) + 192]) > mem[ceil32(stor206.length.field_1) + 192]:
                mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor206.length.field_1) + 192], data=mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor206.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor206.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor206.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
            if ceil32(stor206.length.field_1) <= stor206.length.field_1:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
                mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
                    _3694 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3694)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3694)]
                    if ceil32(_3694) > _3694:
                        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3694 + 256] = 0
                    return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3694) + 32], 
                _3726 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3726)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3726)]
                if ceil32(_3726) > _3726:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3726 + 256] = 0
                return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3726) + 32], 
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192] = 0
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
            mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
                _3695 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3695)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3695)]
                if ceil32(_3695) > _3695:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3695 + 256] = 0
                return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3695) + 32], 
            _3727 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3727)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3727)]
            if ceil32(_3727) > _3727:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3727 + 256] = 0
            return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3727) + 32], 
        mem[ceil32(stor206.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor206.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor206.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
        if ceil32(stor206.length.field_1) <= stor206.length.field_1:
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
            mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
                _3696 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3696)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3696)]
                if ceil32(_3696) > _3696:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3696 + 256] = 0
                return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3696) + 32], 
            _3728 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3728)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3728)]
            if ceil32(_3728) > _3728:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3728 + 256] = 0
            return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3728) + 32], 
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192] = 0
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
        mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
            _3697 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3697)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3697)]
            if ceil32(_3697) > _3697:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3697 + 256] = 0
            return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3697) + 32], 
        _3729 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3729)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3729)]
        if ceil32(_3729) > _3729:
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3729 + 256] = 0
        return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3729) + 32], 
    if 31 >= stor206.length.field_1:
        mem[128] = 256 * stor206.length.field_8
        if stor206.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor206.length.field_1) + 224 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
            mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 224] = '0'
            mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 225] = 32
            mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 257] = mem[ceil32(stor206.length.field_1) + 192]
            mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])] = mem[ceil32(stor206.length.field_1) + 224 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor206.length.field_1) + 192]) > mem[ceil32(stor206.length.field_1) + 192]:
                mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor206.length.field_1) + 192], data=mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor206.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor206.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor206.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
            if ceil32(stor206.length.field_1) <= stor206.length.field_1:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
                mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
                    _3698 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3698)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3698)]
                    if ceil32(_3698) > _3698:
                        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3698 + 256] = 0
                    return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3698) + 32], 
                _3730 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3730)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3730)]
                if ceil32(_3730) > _3730:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3730 + 256] = 0
                return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3730) + 32], 
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192] = 0
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
            mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
                _3699 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3699)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3699)]
                if ceil32(_3699) > _3699:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3699 + 256] = 0
                return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3699) + 32], 
            _3731 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3731)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3731)]
            if ceil32(_3731) > _3731:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3731 + 256] = 0
            return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3731) + 32], 
        mem[ceil32(stor206.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor206.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor206.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
        if ceil32(stor206.length.field_1) <= stor206.length.field_1:
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
            mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
                _3700 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3700)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3700)]
                if ceil32(_3700) > _3700:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3700 + 256] = 0
                return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3700) + 32], 
            _3732 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3732)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3732)]
            if ceil32(_3732) > _3732:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3732 + 256] = 0
            return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3732) + 32], 
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192] = 0
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
        mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
            _3701 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3701)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3701)]
            if ceil32(_3701) > _3701:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3701 + 256] = 0
            return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3701) + 32], 
        _3733 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_3733)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_3733)]
        if ceil32(_3733) > _3733:
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _3733 + 256] = 0
        return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_3733) + 32], 
    mem[0] = 206
    mem[128] = uint256(stor206.field_0)
    idx = 128
    s = 0
    while stor206.length.field_1 + 96 > idx:
        mem[idx + 32] = stor206[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor206.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor206.length.field_1) + 224 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
        mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 224] = '0'
        mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 225] = 32
        mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 257] = mem[ceil32(stor206.length.field_1) + 192]
        mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])] = mem[ceil32(stor206.length.field_1) + 224 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor206.length.field_1) + 192]) > mem[ceil32(stor206.length.field_1) + 192]:
            mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 192] + 289] = 0
        return Array(len=mem[ceil32(stor206.length.field_1) + 192], data=mem[ceil32(stor206.length.field_1) + stor206.length.field_1 + 289 len ceil32(mem[ceil32(stor206.length.field_1) + 192])]), 
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(stor206.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor206.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor206.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
        if ceil32(stor206.length.field_1) <= stor206.length.field_1:
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
            mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
                _4418 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_4418)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_4418)]
                if ceil32(_4418) > _4418:
                    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _4418 + 256] = 0
                return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_4418) + 32], 
            _4434 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_4434)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_4434)]
            if ceil32(_4434) > _4434:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _4434 + 256] = 0
            return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_4434) + 32], 
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192] = 0
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
        mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
            _4419 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_4419)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_4419)]
            if ceil32(_4419) > _4419:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _4419 + 256] = 0
            return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_4419) + 32], 
        _4435 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_4435)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_4435)]
        if ceil32(_4435) > _4435:
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _4435 + 256] = 0
        return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_4435) + 32], 
    mem[ceil32(stor206.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor206.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor206.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(stor206.length.field_1)] = mem[128 len ceil32(stor206.length.field_1)]
    if ceil32(stor206.length.field_1) <= stor206.length.field_1:
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
        mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
            _4420 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_4420)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_4420)]
            if ceil32(_4420) > _4420:
                mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _4420 + 256] = 0
            return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_4420) + 32], 
        _4436 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_4436)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_4436)]
        if ceil32(_4436) > _4436:
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _4436 + 256] = 0
        return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_4436) + 32], 
    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192] = 0
    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + 192 len ceil32(mem[ceil32(stor206.length.field_1) + 128])] = mem[ceil32(stor206.length.field_1) + 160 len ceil32(mem[ceil32(stor206.length.field_1) + 128])]
    mem[64] = ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192
    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 192] = 32
    if ceil32(mem[ceil32(stor206.length.field_1) + 128]) <= mem[ceil32(stor206.length.field_1) + 128]:
        _4421 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_4421)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_4421)]
        if ceil32(_4421) > _4421:
            mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _4421 + 256] = 0
        return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_4421) + 32], 
    _4437 = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 256 len ceil32(_4437)] = mem[ceil32(stor206.length.field_1) + ceil32(s) + 192 len ceil32(_4437)]
    if ceil32(_4437) > _4437:
        mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + _4437 + 256] = 0
    return 32, mem[ceil32(stor206.length.field_1) + ceil32(s) + stor206.length.field_1 + mem[ceil32(stor206.length.field_1) + 128] + 224 len ceil32(_4437) + 32], 
}



}
