contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
address signerAddress;
uint256 price;
uint8 stor9;
uint256 stor9;
array of struct stor10;
array of struct stor11;
array of uint256 stor12;
uint256 supply;
uint256 totalSupply;
uint8 stor15;
uint256 stor15;
mapping of uint8 stor16;

function supply() {
    return supply
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return totalSupply
}

function signer() {
    return signerAddress
}

function revealed() {
    return bool(uint8(stor9))
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

function price() {
    return price
}

function saleLive() {
    return bool(uint8(stor15))
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_ba5a5ea2(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor9) = not bool(uint8(stor9)) or Mask(248, 8, uint256(stor9))
}

function sub_8b375e71(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
}

function switchSaleStatus() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor15) = not bool(uint8(stor15)) or Mask(248, 8, uint256(stor15))
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

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function sub_6fd452de(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 4).length:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor11.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor11[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 4).length:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor11.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor11[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_7bd26ec5(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 4).length:
            stor10.length = 0
            idx = 0
            while stor10.length.field_1 + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor10.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor10[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor10.length.field_1 + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 4).length:
            stor10.length = 0
            idx = 0
            while stor10.length.field_1 + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor10.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor10[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor10.length.field_1 + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_e4e60e1c(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 4).length:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor12.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor12[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 4).length:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor12.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor12[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
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
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
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
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
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
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
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

function withdraw() {
    if eth.balance(this.address) and 25 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call 0x7f41cfb3d9241d6f968db494eb0a6138001390f4 with:
       value 25 * eth.balance(this.address) / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) and 195 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call 0xaa6196b7bd461d3376caecbf248c9cd75cd2e3ea with:
       value 195 * eth.balance(this.address) / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) and 110 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call 0x9a2d28af88235ffd3c818420ff70358467d4bb5c with:
       value 110 * eth.balance(this.address) / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) and 85 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call 0x46ec7b4097fbccf6540791e35eaeb6a3aba2e1f9 with:
       value 85 * eth.balance(this.address) / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) and 195 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call 0x9a1219b330493a0dde9d8c10c579d6fb84ec1b8b with:
       value 195 * eth.balance(this.address) / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) and 195 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call 0x713eed92d42df88ab85934e7156acdc47b9968c4 with:
       value 195 * eth.balance(this.address) / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) and 65 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call 0xe5e7200a9d7f73157d1732715ca0caa4e76690e6 with:
       value 65 * eth.balance(this.address) / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) and 130 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call 0xa1053453525ffb4e460fe34ba10e8d4a37759675 with:
       value 130 * eth.balance(this.address) / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b10b5112(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply > -arg1 - 1:
        revert with 'NH{q', 17
    if totalSupply + arg1 > supply:
        revert with 0, 'BAD SUPPLY'
    idx = 0
    while idx < arg1:
        if totalSupply > -idx - 1:
            revert with 'NH{q', 17
        if totalSupply + idx > -2:
            revert with 'NH{q', 17
        _46 = mem[64]
        mem[64] = mem[64] + 32
        mem[_46] = 0
        if not address(arg2):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor14 + idx + 1]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(arg2)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(arg2)]++
        mem[0] = totalSupply + idx + 1
        mem[32] = 2
        ownerOf[stor14 + idx + 1] = address(arg2)
        emit Transfer(0, address(arg2), totalSupply + idx + 1);
        if ext_code.size(address(arg2)) > 0:
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = totalSupply + idx + 1
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 164] = mem[_46 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(arg2))
            call address(arg2).0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, 0, totalSupply + idx + 1, 128, 0
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
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_90] == Mask(32, 224, mem[_90])
            if Mask(32, 224, mem[_90]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if totalSupply > -arg1 - 1:
        revert with 'NH{q', 17
    totalSupply += arg1
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
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
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
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

function contractURI() {
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor11.length):
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) > stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
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

function mint(uint256 arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    if not uint8(stor15):
        revert with 0, 'SALE_CLOSED'
    if arg1 > 10:
        revert with 0, 'BAD MAX PER BUY'
    if stor16[arg2]:
        revert with 0, 'BAD NONCE'
    if price and arg1 > -1 / price:
        revert with 'NH{q', 17
    if price * arg1 > msg.value:
        revert with 0, 'BAD PRICE'
    if totalSupply > -arg1 - 1:
        revert with 'NH{q', 17
    if totalSupply + arg1 > supply:
        revert with 0, 'BAD MAX SUPPLY'
    mem[ceil32(ceil32(arg3.length)) + 129] = arg2
    mem[ceil32(ceil32(arg3.length)) + 97] = 32
    mem[ceil32(ceil32(arg3.length)) + 193] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(ceil32(arg3.length)) + 221] = sha3(arg2)
    mem[ceil32(ceil32(arg3.length)) + 161] = 60
    if arg3.length == 65:
        if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg3.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[160]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[160]) >> 255) + 27) == 27:
        mem[64] = ceil32(ceil32(arg3.length)) + 285
        mem[ceil32(ceil32(arg3.length)) + 285] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg2))
        mem[ceil32(ceil32(arg3.length)) + 317] = uint8((bool(mem[160]) >> 255) + 27)
        mem[ceil32(ceil32(arg3.length)) + 349] = mem[128]
        mem[ceil32(ceil32(arg3.length)) + 381] = uint255(mem[160])
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg2)), (bool(mem[160]) >> 255) + 27 << 248, mem[128], uint255(mem[160])) 
        mem[ceil32(ceil32(arg3.length)) + 253] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if signerAddress != address(signer):
            revert with 0, 'NOT ALLOWED TO MINT'
        mem[0] = arg2
        mem[32] = 16
        stor16[arg2] = 1
        idx = 0
        while idx < arg1:
            if totalSupply > -idx - 1:
                revert with 'NH{q', 17
            if totalSupply + idx > -2:
                revert with 'NH{q', 17
            _87 = mem[64]
            mem[64] = mem[64] + 32
            mem[_87] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor14 + idx + 1]:
                revert with 0, 'ERC721: token already minted'
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = totalSupply + idx + 1
            mem[32] = 2
            ownerOf[stor14 + idx + 1] = msg.sender
            emit Transfer(0, msg.sender, totalSupply + idx + 1);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = totalSupply + idx + 1
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_87 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, totalSupply + idx + 1, 128, 0
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
                _175 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_175] == Mask(32, 224, mem[_175])
                if Mask(32, 224, mem[_175]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if uint8((bool(mem[160]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
        mem[64] = ceil32(ceil32(arg3.length)) + 285
        mem[ceil32(ceil32(arg3.length)) + 285] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg2))
        mem[ceil32(ceil32(arg3.length)) + 317] = uint8((bool(mem[160]) >> 255) + 27)
        mem[ceil32(ceil32(arg3.length)) + 349] = mem[128]
        mem[ceil32(ceil32(arg3.length)) + 381] = uint255(mem[160])
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg2)), (bool(mem[160]) >> 255) + 27 << 248, mem[128], uint255(mem[160])) 
        mem[ceil32(ceil32(arg3.length)) + 253] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if signerAddress != address(signer):
            revert with 0, 'NOT ALLOWED TO MINT'
        mem[0] = arg2
        mem[32] = 16
        stor16[arg2] = 1
        idx = 0
        while idx < arg1:
            if totalSupply > -idx - 1:
                revert with 'NH{q', 17
            if totalSupply + idx > -2:
                revert with 'NH{q', 17
            _88 = mem[64]
            mem[64] = mem[64] + 32
            mem[_88] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor14 + idx + 1]:
                revert with 0, 'ERC721: token already minted'
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = totalSupply + idx + 1
            mem[32] = 2
            ownerOf[stor14 + idx + 1] = msg.sender
            emit Transfer(0, msg.sender, totalSupply + idx + 1);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = totalSupply + idx + 1
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_88 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, totalSupply + idx + 1, 128, 0
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
                _176 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_176] == Mask(32, 224, mem[_176])
                if Mask(32, 224, mem[_176]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if totalSupply > -arg1 - 1:
        revert with 'NH{q', 17
    totalSupply += arg1
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0, 'Cannot query non-existent token'
    if not uint8(stor9):
        if bool(stor10.length):
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if bool(stor10.length):
                if bool(stor10.length) == stor10.length.field_1 < 32:
                    revert with 'NH{q', 34
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
                        return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)])
                    mem[128] = 256 * stor10.length.field_8
            else:
                if bool(stor10.length) == stor10.length.field_1 < 32:
                    revert with 'NH{q', 34
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
                        return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)])
                    mem[128] = 256 * stor10.length.field_8
            mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
            if ceil32(stor10.length.field_1) > stor10.length.field_1:
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
            return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor10.length):
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
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
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
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
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[192] = Mask(248, 8, stor12.length)
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 6
                    _226 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_226) > _226:
                        mem[_226 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_226) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[idx + 192] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor12.length.field_1 + 192] = '0'
            mem[stor12.length.field_1 + 193] = '.json'
            mem[stor12.length.field_1 + 198] = 32
            mem[stor12.length.field_1 + 230] = mem[160]
            mem[stor12.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor12.length.field_1 + mem[160] + 262] = 0
            return Array(len=mem[160], data=mem[stor12.length.field_1 + 262 len ceil32(mem[160])])
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[192] = Mask(248, 8, stor12.length)
        else:
            if bool(stor12.length) != 1:
                mem[64] = 6
                _228 = mem[160]
                mem[38] = mem[160]
                mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_228) > _228:
                    mem[_228 + 70] = 0
                return memory
                  from mem[64]
                   len ceil32(_228) + -mem[64] + 70
            idx = 0
            s = 0
            while idx < stor12.length.field_1:
                mem[idx + 192] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor12.length.field_1 + 192] = '0'
        mem[stor12.length.field_1 + 193] = '.json'
        mem[stor12.length.field_1 + 198] = 32
        mem[stor12.length.field_1 + 230] = mem[160]
        mem[stor12.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[stor12.length.field_1 + mem[160] + 262] = 0
        return Array(len=mem[160], data=mem[stor12.length.field_1 + 262 len ceil32(mem[160])])
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
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _473 = mem[64]
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[mem[64] + 32] = Mask(248, 8, stor12.length)
                _511 = mem[96]
                mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_473 + stor12.length.field_1 + _511 + 32] = '.json'
                if ceil32(_511) <= _511:
                    _721 = mem[64]
                    mem[64] = _473 + stor12.length.field_1 + _511 + 37
                    mem[_473 + stor12.length.field_1 + _511 + 37] = 32
                    _757 = mem[_721]
                    mem[_473 + stor12.length.field_1 + _511 + 69] = mem[_721]
                    mem[_473 + stor12.length.field_1 + _511 + 101 len ceil32(_757)] = mem[_721 + 32 len ceil32(_757)]
                    if ceil32(_757) > _757:
                        mem[_473 + stor12.length.field_1 + _511 + _757 + 101] = 0
                    return 32, mem[_473 + stor12.length.field_1 + _511 + 69 len ceil32(_757) + 32]
                _733 = mem[64]
                mem[64] = _473 + stor12.length.field_1 + _511 + 37
                mem[_473 + stor12.length.field_1 + _511 + 37] = 32
                _765 = mem[_733]
                mem[_473 + stor12.length.field_1 + _511 + 69] = mem[_733]
                mem[_473 + stor12.length.field_1 + _511 + 101 len ceil32(_765)] = mem[_733 + 32 len ceil32(_765)]
                if ceil32(_765) > _765:
                    mem[_473 + stor12.length.field_1 + _511 + _765 + 101] = 0
                return 32, mem[_473 + stor12.length.field_1 + _511 + 69 len ceil32(_765) + 32]
            if bool(stor12.length) != 1:
                _515 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_515] = '.json'
                if ceil32(_515) <= _515:
                    _723 = mem[64]
                    mem[64] = _515 + 5
                    mem[_515 + 5] = 32
                    _758 = mem[_723]
                    mem[_515 + 37] = mem[_723]
                    mem[_515 + 69 len ceil32(_758)] = mem[_723 + 32 len ceil32(_758)]
                    if ceil32(_758) > _758:
                        mem[_515 + _758 + 69] = 0
                    return 32, mem[_515 + 37 len ceil32(_758) + 32]
                _734 = mem[64]
                mem[64] = _515 + 5
                mem[_515 + 5] = 32
                _766 = mem[_734]
                mem[_515 + 37] = mem[_734]
                mem[_515 + 69 len ceil32(_766)] = mem[_734 + 32 len ceil32(_766)]
                if ceil32(_766) > _766:
                    mem[_515 + _766 + 69] = 0
                return 32, mem[_515 + 37 len ceil32(_766) + 32]
            mem[0] = 12
            idx = 0
            s = 0
            while idx < stor12.length.field_1:
                mem[_473 + idx + 32] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _709 = mem[96]
            mem[_473 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_473 + stor12.length.field_1 + _709 + 32] = '.json'
            if ceil32(_709) <= _709:
                _921 = mem[64]
                mem[64] = _473 + stor12.length.field_1 + _709 + 37
                mem[_473 + stor12.length.field_1 + _709 + 37] = 32
                _937 = mem[_921]
                mem[_473 + stor12.length.field_1 + _709 + 69] = mem[_921]
                mem[_473 + stor12.length.field_1 + _709 + 101 len ceil32(_937)] = mem[_921 + 32 len ceil32(_937)]
                if ceil32(_937) > _937:
                    mem[_473 + stor12.length.field_1 + _709 + _937 + 101] = 0
                return 32, mem[_473 + stor12.length.field_1 + _709 + 69 len ceil32(_937) + 32]
            _925 = mem[64]
            mem[64] = _473 + stor12.length.field_1 + _709 + 37
            mem[_473 + stor12.length.field_1 + _709 + 37] = 32
            _941 = mem[_925]
            mem[_473 + stor12.length.field_1 + _709 + 69] = mem[_925]
            mem[_473 + stor12.length.field_1 + _709 + 101 len ceil32(_941)] = mem[_925 + 32 len ceil32(_941)]
            if ceil32(_941) > _941:
                mem[_473 + stor12.length.field_1 + _709 + _941 + 101] = 0
            return 32, mem[_473 + stor12.length.field_1 + _709 + 69 len ceil32(_941) + 32]
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[mem[64] + 32] = Mask(248, 8, stor12.length)
            _516 = mem[96]
            mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_473 + stor12.length.field_1 + _516 + 32] = '.json'
            if ceil32(_516) <= _516:
                _724 = mem[64]
                mem[64] = _473 + stor12.length.field_1 + _516 + 37
                mem[_473 + stor12.length.field_1 + _516 + 37] = 32
                _759 = mem[_724]
                mem[_473 + stor12.length.field_1 + _516 + 69] = mem[_724]
                mem[_473 + stor12.length.field_1 + _516 + 101 len ceil32(_759)] = mem[_724 + 32 len ceil32(_759)]
                if ceil32(_759) > _759:
                    mem[_473 + stor12.length.field_1 + _516 + _759 + 101] = 0
                return 32, mem[_473 + stor12.length.field_1 + _516 + 69 len ceil32(_759) + 32]
            _735 = mem[64]
            mem[64] = _473 + stor12.length.field_1 + _516 + 37
            mem[_473 + stor12.length.field_1 + _516 + 37] = 32
            _767 = mem[_735]
            mem[_473 + stor12.length.field_1 + _516 + 69] = mem[_735]
            mem[_473 + stor12.length.field_1 + _516 + 101 len ceil32(_767)] = mem[_735 + 32 len ceil32(_767)]
            if ceil32(_767) > _767:
                mem[_473 + stor12.length.field_1 + _516 + _767 + 101] = 0
            return 32, mem[_473 + stor12.length.field_1 + _516 + 69 len ceil32(_767) + 32]
        if bool(stor12.length) != 1:
            _521 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_521] = '.json'
            if ceil32(_521) <= _521:
                _726 = mem[64]
                mem[64] = _521 + 5
                mem[_521 + 5] = 32
                _760 = mem[_726]
                mem[_521 + 37] = mem[_726]
                mem[_521 + 69 len ceil32(_760)] = mem[_726 + 32 len ceil32(_760)]
                if ceil32(_760) > _760:
                    mem[_521 + _760 + 69] = 0
                return 32, mem[_521 + 37 len ceil32(_760) + 32]
            _736 = mem[64]
            mem[64] = _521 + 5
            mem[_521 + 5] = 32
            _768 = mem[_736]
            mem[_521 + 37] = mem[_736]
            mem[_521 + 69 len ceil32(_768)] = mem[_736 + 32 len ceil32(_768)]
            if ceil32(_768) > _768:
                mem[_521 + _768 + 69] = 0
            return 32, mem[_521 + 37 len ceil32(_768) + 32]
        mem[0] = 12
        idx = 0
        s = 0
        while idx < stor12.length.field_1:
            mem[_473 + idx + 32] = stor12[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _710 = mem[96]
        mem[_473 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_473 + stor12.length.field_1 + _710 + 32] = '.json'
        if ceil32(_710) <= _710:
            _922 = mem[64]
            mem[64] = _473 + stor12.length.field_1 + _710 + 37
            mem[_473 + stor12.length.field_1 + _710 + 37] = 32
            _938 = mem[_922]
            mem[_473 + stor12.length.field_1 + _710 + 69] = mem[_922]
            mem[_473 + stor12.length.field_1 + _710 + 101 len ceil32(_938)] = mem[_922 + 32 len ceil32(_938)]
            if ceil32(_938) > _938:
                mem[_473 + stor12.length.field_1 + _710 + _938 + 101] = 0
            return 32, mem[_473 + stor12.length.field_1 + _710 + 69 len ceil32(_938) + 32]
        _926 = mem[64]
        mem[64] = _473 + stor12.length.field_1 + _710 + 37
        mem[_473 + stor12.length.field_1 + _710 + 37] = 32
        _942 = mem[_926]
        mem[_473 + stor12.length.field_1 + _710 + 69] = mem[_926]
        mem[_473 + stor12.length.field_1 + _710 + 101 len ceil32(_942)] = mem[_926 + 32 len ceil32(_942)]
        if ceil32(_942) > _942:
            mem[_473 + stor12.length.field_1 + _710 + _942 + 101] = 0
        return 32, mem[_473 + stor12.length.field_1 + _710 + 69 len ceil32(_942) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _474 = mem[64]
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[mem[64] + 32] = Mask(248, 8, stor12.length)
            _512 = mem[96]
            mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_474 + stor12.length.field_1 + _512 + 32] = '.json'
            if ceil32(_512) <= _512:
                _727 = mem[64]
                mem[64] = _474 + stor12.length.field_1 + _512 + 37
                mem[_474 + stor12.length.field_1 + _512 + 37] = 32
                _761 = mem[_727]
                mem[_474 + stor12.length.field_1 + _512 + 69] = mem[_727]
                mem[_474 + stor12.length.field_1 + _512 + 101 len ceil32(_761)] = mem[_727 + 32 len ceil32(_761)]
                if ceil32(_761) > _761:
                    mem[_474 + stor12.length.field_1 + _512 + _761 + 101] = 0
                return 32, mem[_474 + stor12.length.field_1 + _512 + 69 len ceil32(_761) + 32]
            _737 = mem[64]
            mem[64] = _474 + stor12.length.field_1 + _512 + 37
            mem[_474 + stor12.length.field_1 + _512 + 37] = 32
            _769 = mem[_737]
            mem[_474 + stor12.length.field_1 + _512 + 69] = mem[_737]
            mem[_474 + stor12.length.field_1 + _512 + 101 len ceil32(_769)] = mem[_737 + 32 len ceil32(_769)]
            if ceil32(_769) > _769:
                mem[_474 + stor12.length.field_1 + _512 + _769 + 101] = 0
            return 32, mem[_474 + stor12.length.field_1 + _512 + 69 len ceil32(_769) + 32]
        if bool(stor12.length) != 1:
            _517 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_517] = '.json'
            if ceil32(_517) <= _517:
                _729 = mem[64]
                mem[64] = _517 + 5
                mem[_517 + 5] = 32
                _762 = mem[_729]
                mem[_517 + 37] = mem[_729]
                mem[_517 + 69 len ceil32(_762)] = mem[_729 + 32 len ceil32(_762)]
                if ceil32(_762) > _762:
                    mem[_517 + _762 + 69] = 0
                return 32, mem[_517 + 37 len ceil32(_762) + 32]
            _738 = mem[64]
            mem[64] = _517 + 5
            mem[_517 + 5] = 32
            _770 = mem[_738]
            mem[_517 + 37] = mem[_738]
            mem[_517 + 69 len ceil32(_770)] = mem[_738 + 32 len ceil32(_770)]
            if ceil32(_770) > _770:
                mem[_517 + _770 + 69] = 0
            return 32, mem[_517 + 37 len ceil32(_770) + 32]
        mem[0] = 12
        idx = 0
        s = 0
        while idx < stor12.length.field_1:
            mem[_474 + idx + 32] = stor12[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _711 = mem[96]
        mem[_474 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_474 + stor12.length.field_1 + _711 + 32] = '.json'
        if ceil32(_711) <= _711:
            _923 = mem[64]
            mem[64] = _474 + stor12.length.field_1 + _711 + 37
            mem[_474 + stor12.length.field_1 + _711 + 37] = 32
            _939 = mem[_923]
            mem[_474 + stor12.length.field_1 + _711 + 69] = mem[_923]
            mem[_474 + stor12.length.field_1 + _711 + 101 len ceil32(_939)] = mem[_923 + 32 len ceil32(_939)]
            if ceil32(_939) > _939:
                mem[_474 + stor12.length.field_1 + _711 + _939 + 101] = 0
            return 32, mem[_474 + stor12.length.field_1 + _711 + 69 len ceil32(_939) + 32]
        _927 = mem[64]
        mem[64] = _474 + stor12.length.field_1 + _711 + 37
        mem[_474 + stor12.length.field_1 + _711 + 37] = 32
        _943 = mem[_927]
        mem[_474 + stor12.length.field_1 + _711 + 69] = mem[_927]
        mem[_474 + stor12.length.field_1 + _711 + 101 len ceil32(_943)] = mem[_927 + 32 len ceil32(_943)]
        if ceil32(_943) > _943:
            mem[_474 + stor12.length.field_1 + _711 + _943 + 101] = 0
        return 32, mem[_474 + stor12.length.field_1 + _711 + 69 len ceil32(_943) + 32]
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor12.length):
        mem[mem[64] + 32] = Mask(248, 8, stor12.length)
        _518 = mem[96]
        mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_474 + stor12.length.field_1 + _518 + 32] = '.json'
        if ceil32(_518) <= _518:
            _730 = mem[64]
            mem[64] = _474 + stor12.length.field_1 + _518 + 37
            mem[_474 + stor12.length.field_1 + _518 + 37] = 32
            _763 = mem[_730]
            mem[_474 + stor12.length.field_1 + _518 + 69] = mem[_730]
            mem[_474 + stor12.length.field_1 + _518 + 101 len ceil32(_763)] = mem[_730 + 32 len ceil32(_763)]
            if ceil32(_763) > _763:
                mem[_474 + stor12.length.field_1 + _518 + _763 + 101] = 0
            return 32, mem[_474 + stor12.length.field_1 + _518 + 69 len ceil32(_763) + 32]
        _739 = mem[64]
        mem[64] = _474 + stor12.length.field_1 + _518 + 37
        mem[_474 + stor12.length.field_1 + _518 + 37] = 32
        _771 = mem[_739]
        mem[_474 + stor12.length.field_1 + _518 + 69] = mem[_739]
        mem[_474 + stor12.length.field_1 + _518 + 101 len ceil32(_771)] = mem[_739 + 32 len ceil32(_771)]
        if ceil32(_771) > _771:
            mem[_474 + stor12.length.field_1 + _518 + _771 + 101] = 0
        return 32, mem[_474 + stor12.length.field_1 + _518 + 69 len ceil32(_771) + 32]
    if bool(stor12.length) != 1:
        _522 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_522] = '.json'
        if ceil32(_522) <= _522:
            _732 = mem[64]
            mem[64] = _522 + 5
            mem[_522 + 5] = 32
            _764 = mem[_732]
            mem[_522 + 37] = mem[_732]
            mem[_522 + 69 len ceil32(_764)] = mem[_732 + 32 len ceil32(_764)]
            if ceil32(_764) > _764:
                mem[_522 + _764 + 69] = 0
            return 32, mem[_522 + 37 len ceil32(_764) + 32]
        _740 = mem[64]
        mem[64] = _522 + 5
        mem[_522 + 5] = 32
        _772 = mem[_740]
        mem[_522 + 37] = mem[_740]
        mem[_522 + 69 len ceil32(_772)] = mem[_740 + 32 len ceil32(_772)]
        if ceil32(_772) > _772:
            mem[_522 + _772 + 69] = 0
        return 32, mem[_522 + 37 len ceil32(_772) + 32]
    mem[0] = 12
    idx = 0
    s = 0
    while idx < stor12.length.field_1:
        mem[_474 + idx + 32] = stor12[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _712 = mem[96]
    mem[_474 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_474 + stor12.length.field_1 + _712 + 32] = '.json'
    if ceil32(_712) <= _712:
        _924 = mem[64]
        mem[64] = _474 + stor12.length.field_1 + _712 + 37
        mem[_474 + stor12.length.field_1 + _712 + 37] = 32
        _940 = mem[_924]
        mem[_474 + stor12.length.field_1 + _712 + 69] = mem[_924]
        mem[_474 + stor12.length.field_1 + _712 + 101 len ceil32(_940)] = mem[_924 + 32 len ceil32(_940)]
        if ceil32(_940) > _940:
            mem[_474 + stor12.length.field_1 + _712 + _940 + 101] = 0
        return 32, mem[_474 + stor12.length.field_1 + _712 + 69 len ceil32(_940) + 32]
    _928 = mem[64]
    mem[64] = _474 + stor12.length.field_1 + _712 + 37
    mem[_474 + stor12.length.field_1 + _712 + 37] = 32
    _944 = mem[_928]
    mem[_474 + stor12.length.field_1 + _712 + 69] = mem[_928]
    mem[_474 + stor12.length.field_1 + _712 + 101 len ceil32(_944)] = mem[_928 + 32 len ceil32(_944)]
    if ceil32(_944) > _944:
        mem[_474 + stor12.length.field_1 + _712 + _944 + 101] = 0
    return 32, mem[_474 + stor12.length.field_1 + _712 + 69 len ceil32(_944) + 32]
}



}
