contract main {




// =====================  Runtime code  =====================


#
#  - sub_d2114901(?)
#
const getBalance = eth.balance(this.address)


address owner;
mapping of uint8 stor1;
array of struct stor2;
array of struct stor3;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor7;
uint256 totalShares;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;
address developerAddress;
uint256 totalSupply;
uint256 stor15;
array of uint256 stor18;
uint8 stor20;
uint256 stor21;
array of address stor22;
array of address stor23;
array of struct stor26;
mapping of address sub_9d043593;
mapping of uint256 stor28;

function isDelegate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor1[address(arg1)])
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

function totalShares() {
    return totalShares
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

function payee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= payee.length:
        revert with 'NH{q', 50
    return payee[arg1]
}

function owner() {
    return owner
}

function released(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return released[address(arg1)]
}

function sub_9d043593(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_9d043593[arg1]
}

function developer() {
    return developerAddress
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[address(arg1)]
}

function totalReleased() {
    return totalReleased
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    emit PaymentReceived(msg.sender, msg.value);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function enableMinting() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor20 = 1
    emit 0x1ab1d89b: bool(stor20), bool(stor20)
}

function disableMinting() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor20 = 0
    emit 0x1ab1d89b: bool(stor20), bool(stor20)
}

function addWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22.length++
    stor22[stor22.length] = arg1
}

function sub_cef3ebf2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23.length++
    stor23[stor23.length] = address(arg1)
}

function setDelegate(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    return ''
}

function setMintFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    stor15 = 10^18 * arg1
    emit 0xae0eb5cc: stor15, stor15
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
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

function sweepEthToAddress(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if developerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Developer: caller is not the developer'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferDeveloper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if developerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Developer: caller is not the developer'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Developer: new developer is the zero address'
    developerAddress = arg1
    emit 0x2cfca82a: developerAddress, arg1
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
        if not stor7[stor4[arg2]][address(msg.sender)]:
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
            if not stor7[stor4[arg3]][address(msg.sender)]:
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
            if not stor7[stor4[arg3]][address(msg.sender)]:
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
            if not stor7[stor4[arg3]][address(msg.sender)]:
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

function release(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if shares[address(arg1)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    if eth.balance(this.address) > -totalReleased - 1:
        revert with 'NH{q', 17
    if eth.balance(this.address) + totalReleased and shares[address(arg1)] > -1 / eth.balance(this.address) + totalReleased:
        revert with 'NH{q', 17
    if not totalShares:
        revert with 'NH{q', 18
    if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
        revert with 'NH{q', 17
    if not ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)] > -((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) + released[address(arg1)] - 1:
        revert with 'NH{q', 17
    released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares
    if totalReleased > -((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) + released[address(arg1)] - 1:
        revert with 'NH{q', 17
    totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]
    if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit PaymentReleased(address(arg1), ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]);
}

function publicMint() payable {
    if not stor20:
        revert with 0, 'Minter not active'
    if stor15 != msg.value:
        revert with 0, 'Wrong amount of avax'
    if block.timestamp > -1:
        revert with 'NH{q', 17
    stor26.length++
    stor26[stor26.length].field_0 = 0
    stor26[stor26.length].field_256 = 0
    if stor26[stor26.length].field_256:
        if stor26[stor26.length].field_256 == stor26[stor26.length].field_257 < 32:
            revert with 'NH{q', 34
        stor26[stor26.length].field_256 = 0
        stor26[stor26.length].field_257 = 7
        stor26[stor26.length].field_264 = 'test123' / 256
        idx = 0
        while stor26[stor26.length].field_257 + 31 / 32 > idx:
            stor[idx + sha3((8 * stor26.length) + ('name', 'stor26', 26) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor26[stor26.length].field_256 == stor26[stor26.length].field_257 < 32:
            revert with 'NH{q', 34
        stor26[stor26.length].field_256 = 0
        stor26[stor26.length].field_257 = 7
        stor26[stor26.length].field_264 = 'test123' / 256
        idx = 0
        while stor26[stor26.length].field_257 + 31 / 32 > idx:
            stor[idx + sha3((8 * stor26.length) + ('name', 'stor26', 26) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    stor26[stor26.length].field_512 = 1
    stor26[stor26.length].field_768 = 1
    stor26[stor26.length].field_1024 = 1
    stor26[stor26.length].field_1280 = 1
    stor26[stor26.length].field_1536 = 1
    stor26[stor26.length].field_1792 = uint32(block.timestamp)
    if stor26.length < 1:
        revert with 'NH{q', 17
    sub_9d043593[stor26.length - 1] = msg.sender
    if stor28[address(msg.sender)] == -1:
        revert with 'NH{q', 17
    stor28[address(msg.sender)]++
    emit 0x970005fc: stor26.length - 1, 224, 1, 1, 1, 1, 1, 7, 'test123', 0
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor14]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor14] = msg.sender
    emit Transfer(0, msg.sender, totalSupply);
    if ext_code.size(msg.sender) > 0:
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, totalSupply, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 'test123'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    totalSupply++
    if 0 >= stor18.length:
        revert with 'NH{q', 50
    if stor18 == -1:
        revert with 'NH{q', 17
    stor18++
}

function name() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function symbol() {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
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

function sub_532eba65(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor26.length
    if stor26[arg1].field_256:
        if stor26[arg1].field_256 == stor26[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor26[arg1].field_256:
            if stor26[arg1].field_256 == stor26[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor26[arg1].field_257:
                if 31 >= stor26[arg1].field_257:
                    mem[128] = 256 * stor26[arg1].field_264
                else:
                    mem[128] = stor[sha3((8 * arg1) + ('name', 'stor26', 26) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor26[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor26', 26) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor26[arg1].field_256 == stor26[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor26[arg1].field_257:
                if 31 >= stor26[arg1].field_257:
                    mem[128] = 256 * stor26[arg1].field_264
                else:
                    mem[128] = stor[sha3((8 * arg1) + ('name', 'stor26', 26) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor26[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor26', 26) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor26[arg1].field_0, 
               Array(len=2 * Mask(256, -1, stor26[arg1].field_257), data=mem[128 len ceil32(stor26[arg1].field_257)]),
               stor26[arg1].field_512,
               stor26[arg1].field_768,
               stor26[arg1].field_1024,
               stor26[arg1].field_1280,
               stor26[arg1].field_1536,
               stor26[arg1].field_1792
    if stor26[arg1].field_256 == stor26[arg1].field_257 < 32:
        revert with 'NH{q', 34
    if stor26[arg1].field_256:
        if stor26[arg1].field_256 == stor26[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor26[arg1].field_257:
            if 31 >= stor26[arg1].field_257:
                mem[128] = 256 * stor26[arg1].field_264
            else:
                mem[128] = stor[sha3((8 * arg1) + ('name', 'stor26', 26) + 1)].field_0
                idx = 128
                s = 0
                while stor26[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor26', 26) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor26[arg1].field_256 == stor26[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor26[arg1].field_257:
            if 31 >= stor26[arg1].field_257:
                mem[128] = 256 * stor26[arg1].field_264
            else:
                mem[128] = stor[sha3((8 * arg1) + ('name', 'stor26', 26) + 1)].field_0
                idx = 128
                s = 0
                while stor26[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor26', 26) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor26[arg1].field_0, 
           Array(len=stor26[arg1].field_256, data=mem[128 len ceil32(stor26[arg1].field_257)]),
           stor26[arg1].field_512,
           stor26[arg1].field_768,
           stor26[arg1].field_1024,
           stor26[arg1].field_1280,
           stor26[arg1].field_1536,
           stor26[arg1].field_1792
}

function sub_eac3d07d(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == uint8(arg2)
    require msg.sender == sub_9d043593[arg1]
    require msg.sender == sub_9d043593[arg1]
    if arg1 >= stor26.length:
        revert with 'NH{q', 50
    if uint8(arg2) != 168 * 24 * 3600:
        if arg1 >= stor26.length:
            revert with 'NH{q', 50
        if block.timestamp > -stor21 - 1:
            revert with 'NH{q', 17
        stor26[arg1].field_1792 = uint32(block.timestamp + stor21)
        if stor26[arg1].field_256:
            if stor26[arg1].field_256 == stor26[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if not stor26[arg1].field_256:
                emit 0xf62e643e: 32, stor26[arg1].field_0, 256, stor26[arg1].field_512, stor26[arg1].field_768, stor26[arg1].field_1024, stor26[arg1].field_1280, stor26[arg1].field_1536, stor26[arg1].field_1792, 2 * Mask(256, -1, stor26[arg1].field_257), Mask(248, 8, stor26[arg1].field_256)
            else:
                if stor26[arg1].field_256 != 1:
                    emit 0xf62e643e: mem[416 len -416]
                else:
                    idx = 0
                    s = 0
                    while idx < stor26[arg1].field_257:
                        mem[idx + 736] = stor[s + sha3((8 * arg1) + ('name', 'stor26', 26) + 1)].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xf62e643e: 32, stor26[arg1].field_0, 256, stor26[arg1].field_512, stor26[arg1].field_768, stor26[arg1].field_1024, stor26[arg1].field_1280, stor26[arg1].field_1536, stor26[arg1].field_1792, 2 * Mask(256, -1, stor26[arg1].field_257), mem[736 len ceil32(stor26[arg1].field_257)]
        else:
            if stor26[arg1].field_256 == stor26[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if not stor26[arg1].field_256:
                emit 0xf62e643e: 32, stor26[arg1].field_0, 256, stor26[arg1].field_512, stor26[arg1].field_768, stor26[arg1].field_1024, stor26[arg1].field_1280, stor26[arg1].field_1536, stor26[arg1].field_1792, stor26[arg1].field_256, Mask(248, 8, stor26[arg1].field_256)
            else:
                if stor26[arg1].field_256 != 1:
                    emit 0xf62e643e: mem[416 len -416]
                else:
                    idx = 0
                    s = 0
                    while idx < stor26[arg1].field_257:
                        mem[idx + 736] = stor[s + sha3((8 * arg1) + ('name', 'stor26', 26) + 1)].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xf62e643e: 32, stor26[arg1].field_0, 256, stor26[arg1].field_512, stor26[arg1].field_768, stor26[arg1].field_1024, stor26[arg1].field_1280, stor26[arg1].field_1536, stor26[arg1].field_1792, stor26[arg1].field_256, mem[736 len ceil32(stor26[arg1].field_257)]
    else:
        if stor26[arg1].field_512 > -2:
            revert with 'NH{q', 17
        if stor26[arg1].field_768 > -2:
            revert with 'NH{q', 17
        if stor26[arg1].field_1024 > -2:
            revert with 'NH{q', 17
        if stor26[arg1].field_1280 > -2:
            revert with 'NH{q', 17
        if stor26[arg1].field_1536 > -2:
            revert with 'NH{q', 17
        if arg1 >= stor26.length:
            revert with 'NH{q', 50
        stor26[arg1].field_512++
        stor26[arg1].field_768++
        stor26[arg1].field_1024++
        stor26[arg1].field_1280++
        stor26[arg1].field_1536++
        if block.timestamp > -stor21 - 1:
            revert with 'NH{q', 17
        stor26[arg1].field_1792 = uint32(block.timestamp + stor21)
        if stor26[arg1].field_256:
            if stor26[arg1].field_256 == stor26[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if not stor26[arg1].field_256:
                emit 0xf62e643e: 32, stor26[arg1].field_0, 256, stor26[arg1].field_512, stor26[arg1].field_768, stor26[arg1].field_1024, stor26[arg1].field_1280, stor26[arg1].field_1536, stor26[arg1].field_1792, 2 * Mask(256, -1, stor26[arg1].field_257), Mask(248, 8, stor26[arg1].field_256)
            else:
                if stor26[arg1].field_256 != 1:
                    emit 0xf62e643e: mem[576 len -576]
                else:
                    idx = 0
                    s = 0
                    while idx < stor26[arg1].field_257:
                        mem[idx + 896] = stor[s + sha3((8 * arg1) + ('name', 'stor26', 26) + 1)].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xf62e643e: 32, stor26[arg1].field_0, 256, stor26[arg1].field_512, stor26[arg1].field_768, stor26[arg1].field_1024, stor26[arg1].field_1280, stor26[arg1].field_1536, stor26[arg1].field_1792, 2 * Mask(256, -1, stor26[arg1].field_257), mem[896 len ceil32(stor26[arg1].field_257)]
        else:
            if stor26[arg1].field_256 == stor26[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if not stor26[arg1].field_256:
                emit 0xf62e643e: 32, stor26[arg1].field_0, 256, stor26[arg1].field_512, stor26[arg1].field_768, stor26[arg1].field_1024, stor26[arg1].field_1280, stor26[arg1].field_1536, stor26[arg1].field_1792, stor26[arg1].field_256, Mask(248, 8, stor26[arg1].field_256)
            else:
                if stor26[arg1].field_256 != 1:
                    emit 0xf62e643e: mem[576 len -576]
                else:
                    idx = 0
                    s = 0
                    while idx < stor26[arg1].field_257:
                        mem[idx + 896] = stor[s + sha3((8 * arg1) + ('name', 'stor26', 26) + 1)].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xf62e643e: 32, stor26[arg1].field_0, 256, stor26[arg1].field_512, stor26[arg1].field_768, stor26[arg1].field_1024, stor26[arg1].field_1280, stor26[arg1].field_1536, stor26[arg1].field_1792, stor26[arg1].field_256, mem[896 len ceil32(stor26[arg1].field_257)]
}



}
