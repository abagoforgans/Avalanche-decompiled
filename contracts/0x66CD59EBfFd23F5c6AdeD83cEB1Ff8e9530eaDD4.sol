contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
array of uint256 stor7;
uint256 cost;
uint8 open; offset 128
uint32 maxPerMint;
uint32 maxPerWallet; offset 32
uint32 supply; offset 64
uint32 totalSupply; offset 96
uint128 stor9; offset 128
mapping of uint256 stor10;
uint32 stor11;
address stor11; offset 32

function supply() {
    return supply
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function cost() {
    return cost
}

function totalSupply() {
    return totalSupply
}

function maxPerWallet() {
    return maxPerWallet
}

function maxPerMint() {
    return maxPerMint
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

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function open() {
    return bool(open)
}

function _fallback() payable {
    revert
}

function setCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cost = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_f8048d8f(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxPerMint = uint32(arg1)
}

function sub_3006b543(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxPerWallet = uint32(arg1)
}

function setOpen(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint128(stor9.field_128) = uint128(arg1)
}

function setCommission(uint32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor11.field_32) != msg.sender:
        revert with 0, 'Incorrect Address'
    uint32(stor11.field_0) = arg1
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
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
    while arg1.length > uint32(idx):
        if 1 > -supply + test266151307():
            revert with 0, 17
        if uint32(supply + 1) > totalSupply:
            revert with 0, 'Limit reached'
        if uint32(idx) >= arg1.length:
            revert with 0, 50
        require cd[((32 * uint32(idx)) + arg1 + 36)] == address(cd[((32 * uint32(idx)) + arg1 + 36)])
        if supply == test266151307():
            revert with 0, 17
        supply = uint32(supply + 1)
        _47 = mem[64]
        mem[64] = mem[64] + 32
        mem[_47] = 0
        if not address(cd[((32 * uint32(idx)) + arg1 + 36)]):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[uint32(stor9.field_64) + 1 << 224]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(cd[((32 * uint32(idx)) + arg1 + 36)])] > -2:
            revert with 0, 17
        balanceOf[address(cd[((32 * uint32(idx)) + arg1 + 36)])]++
        mem[0] = uint32(supply + 1)
        mem[32] = 2
        ownerOf[uint32(stor9.field_64) + 1 << 224] = address(cd[((32 * uint32(idx)) + arg1 + 36)])
        emit Transfer(0, address(cd[((32 * uint32(idx)) + arg1 + 36)]), uint32(supply + 1));
        if ext_code.size(address(cd[((32 * uint32(idx)) + arg1 + 36)])):
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = uint32(supply + 1)
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 164] = mem[s + _47 + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * uint32(idx)) + arg1 + 36)]))
            call address(cd[((32 * uint32(idx)) + arg1 + 36)]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, supply + 1 << 224, 128, 0
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
        if uint32(idx) == test266151307():
            revert with 0, 17
        idx = uint32(idx) + 1
        continue 
}

function mint(uint32 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'Mint at least one.'
    if 1 > -maxPerMint + test266151307():
        revert with 0, 17
    if arg1 >= uint32(maxPerMint + 1):
        revert with 0, 'Max mint reached.'
    if cost and arg1 > -1 / cost:
        revert with 0, 17
    if msg.value < cost * arg1:
        revert with 0, 'Not enough fund.'
    if 1 > -totalSupply + test266151307():
        revert with 0, 17
    if supply > -arg1 + test266151307():
        revert with 0, 17
    if uint32(arg1 + supply) >= uint32(totalSupply + 1):
        revert with 0, 'Mint sold out'
    mem[0] = msg.sender
    mem[32] = 10
    if stor10[msg.sender] > !arg1:
        revert with 0, 17
    if stor10[msg.sender] + arg1 > maxPerWallet:
        revert with 0, 'Max total mint reached'
    if bool(open) != 1:
        revert with 0, 'Mint not open'
    idx = 0
    while uint32(idx) < arg1:
        if supply == test266151307():
            revert with 0, 17
        supply = uint32(supply + 1)
        _58 = mem[64]
        mem[64] = mem[64] + 32
        mem[_58] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[uint32(stor9.field_64) + 1 << 224]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        mem[0] = uint32(supply + 1)
        mem[32] = 2
        ownerOf[uint32(stor9.field_64) + 1 << 224] = msg.sender
        emit Transfer(0, msg.sender, uint32(supply + 1));
        if ext_code.size(msg.sender):
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = uint32(supply + 1)
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 164] = mem[s + _58 + 32]
                s = s + 32
                continue 
            require ext_code.size(msg.sender)
            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, supply + 1 << 224, 128, 0
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
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_103] == Mask(32, 224, mem[_103])
            if Mask(32, 224, mem[_103]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if uint32(idx) == test266151307():
            revert with 0, 17
        idx = uint32(idx) + 1
        continue 
    if stor10[msg.sender] > !arg1:
        revert with 0, 17
    stor10[msg.sender] += arg1
    if msg.value and uint32(stor11.field_0) > -1 / msg.value:
        revert with 0, 17
    call address(stor11.field_32) with:
       value msg.value * uint32(stor11.field_0) / 1000 wei
         gas gas_remaining wei
    require ext_call.success
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
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
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
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
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
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
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
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > supply:
        revert with 0, 'Not minted yet'
    if not arg1:
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if bool(stor7.length):
            if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor7.length):
                mem[192] = Mask(248, 8, stor7.length)
            else:
                if bool(stor7.length) != 1:
                    mem[64] = 6
                    _121 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_121) > _121:
                        mem[_121 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_121) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < uint255(stor7.length) * 0.5:
                    mem[idx + 192] = stor7[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(uint255(stor7.length) * 0.5) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor7.length) * 0.5) + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor7.length) * 0.5) + 198] = 32
            mem[(uint255(stor7.length) * 0.5) + 230] = mem[160]
            mem[(uint255(stor7.length) * 0.5) + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + (uint255(stor7.length) * 0.5) + 262] = 0
            return Array(len=mem[160], data=mem[(uint255(stor7.length) * 0.5) + 262 len ceil32(mem[160])])
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor7.length):
            mem[192] = Mask(248, 8, stor7.length)
        else:
            if bool(stor7.length) != 1:
                mem[64] = 6
                _125 = mem[160]
                mem[38] = mem[160]
                mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_125) > _125:
                    mem[_125 + 70] = 0
                return memory
                  from mem[64]
                   len ceil32(_125) + -mem[64] + 70
            idx = 0
            s = 0
            while idx < stor7.length.field_1:
                mem[idx + 192] = stor7[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor7.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[stor7.length.field_1 + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[stor7.length.field_1 + 198] = 32
        mem[stor7.length.field_1 + 230] = mem[160]
        mem[stor7.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + stor7.length.field_1 + 262] = 0
        return Array(len=mem[160], data=mem[stor7.length.field_1 + 262 len ceil32(mem[160])])
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
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _358 = mem[64]
        if bool(stor7.length):
            if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor7.length):
                mem[mem[64] + 32] = Mask(248, 8, stor7.length)
                _386 = mem[96]
                mem[mem[64] + (uint255(stor7.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_386 + _358 + (uint255(stor7.length) * 0.5) + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_386) <= _386:
                    _598 = mem[64]
                    mem[64] = _386 + _358 + (uint255(stor7.length) * 0.5) + 37
                    mem[_386 + _358 + (uint255(stor7.length) * 0.5) + 37] = 32
                    _634 = mem[_598]
                    mem[_386 + _358 + (uint255(stor7.length) * 0.5) + 69] = mem[_598]
                    mem[_386 + _358 + (uint255(stor7.length) * 0.5) + 101 len ceil32(_634)] = mem[_598 + 32 len ceil32(_634)]
                    if ceil32(_634) > _634:
                        mem[_634 + _386 + _358 + (uint255(stor7.length) * 0.5) + 101] = 0
                    return 32, mem[_386 + _358 + (uint255(stor7.length) * 0.5) + 69 len ceil32(_634) + 32]
                _599 = mem[64]
                mem[64] = _386 + _358 + (uint255(stor7.length) * 0.5) + 37
                mem[_386 + _358 + (uint255(stor7.length) * 0.5) + 37] = 32
                _635 = mem[_599]
                mem[_386 + _358 + (uint255(stor7.length) * 0.5) + 69] = mem[_599]
                mem[_386 + _358 + (uint255(stor7.length) * 0.5) + 101 len ceil32(_635)] = mem[_599 + 32 len ceil32(_635)]
                if ceil32(_635) > _635:
                    mem[_635 + _386 + _358 + (uint255(stor7.length) * 0.5) + 101] = 0
                return 32, mem[_386 + _358 + (uint255(stor7.length) * 0.5) + 69 len ceil32(_635) + 32]
            if bool(stor7.length) != 1:
                _390 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_390] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_390) <= _390:
                    _601 = mem[64]
                    mem[64] = _390 + 5
                    mem[_390 + 5] = 32
                    _636 = mem[_601]
                    mem[_390 + 37] = mem[_601]
                    mem[_390 + 69 len ceil32(_636)] = mem[_601 + 32 len ceil32(_636)]
                    if ceil32(_636) > _636:
                        mem[_636 + _390 + 69] = 0
                    return 32, mem[_390 + 37 len ceil32(_636) + 32]
                _602 = mem[64]
                mem[64] = _390 + 5
                mem[_390 + 5] = 32
                _637 = mem[_602]
                mem[_390 + 37] = mem[_602]
                mem[_390 + 69 len ceil32(_637)] = mem[_602 + 32 len ceil32(_637)]
                if ceil32(_637) > _637:
                    mem[_637 + _390 + 69] = 0
                return 32, mem[_390 + 37 len ceil32(_637) + 32]
            mem[0] = 7
            idx = 0
            s = 0
            while idx < uint255(stor7.length) * 0.5:
                mem[idx + _358 + 32] = stor7[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _586 = mem[96]
            mem[_358 + (uint255(stor7.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_586 + _358 + (uint255(stor7.length) * 0.5) + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_586) <= _586:
                _798 = mem[64]
                mem[64] = _586 + _358 + (uint255(stor7.length) * 0.5) + 37
                mem[_586 + _358 + (uint255(stor7.length) * 0.5) + 37] = 32
                _814 = mem[_798]
                mem[_586 + _358 + (uint255(stor7.length) * 0.5) + 69] = mem[_798]
                mem[_586 + _358 + (uint255(stor7.length) * 0.5) + 101 len ceil32(_814)] = mem[_798 + 32 len ceil32(_814)]
                if ceil32(_814) > _814:
                    mem[_814 + _586 + _358 + (uint255(stor7.length) * 0.5) + 101] = 0
                return 32, mem[_586 + _358 + (uint255(stor7.length) * 0.5) + 69 len ceil32(_814) + 32]
            _799 = mem[64]
            mem[64] = _586 + _358 + (uint255(stor7.length) * 0.5) + 37
            mem[_586 + _358 + (uint255(stor7.length) * 0.5) + 37] = 32
            _815 = mem[_799]
            mem[_586 + _358 + (uint255(stor7.length) * 0.5) + 69] = mem[_799]
            mem[_586 + _358 + (uint255(stor7.length) * 0.5) + 101 len ceil32(_815)] = mem[_799 + 32 len ceil32(_815)]
            if ceil32(_815) > _815:
                mem[_815 + _586 + _358 + (uint255(stor7.length) * 0.5) + 101] = 0
            return 32, mem[_586 + _358 + (uint255(stor7.length) * 0.5) + 69 len ceil32(_815) + 32]
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor7.length):
            mem[mem[64] + 32] = Mask(248, 8, stor7.length)
            _391 = mem[96]
            mem[mem[64] + stor7.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + stor7.length.field_1 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _603 = mem[64]
                mem[64] = mem[96] + mem[64] + stor7.length.field_1 + 37
                mem[mem[96] + _358 + stor7.length.field_1 + 37] = 32
                _638 = mem[_603]
                mem[_391 + _358 + stor7.length.field_1 + 69] = mem[_603]
                mem[_391 + _358 + stor7.length.field_1 + 101 len ceil32(_638)] = mem[_603 + 32 len ceil32(_638)]
                if ceil32(_638) > _638:
                    mem[_638 + _391 + _358 + stor7.length.field_1 + 101] = 0
                return 32, mem[_391 + _358 + stor7.length.field_1 + 69 len ceil32(_638) + 32]
            _604 = mem[64]
            mem[64] = mem[96] + mem[64] + stor7.length.field_1 + 37
            mem[mem[96] + _358 + stor7.length.field_1 + 37] = 32
            _639 = mem[_604]
            mem[_391 + _358 + stor7.length.field_1 + 69] = mem[_604]
            mem[_391 + _358 + stor7.length.field_1 + 101 len ceil32(_639)] = mem[_604 + 32 len ceil32(_639)]
            if ceil32(_639) > _639:
                mem[_639 + _391 + _358 + stor7.length.field_1 + 101] = 0
            return 32, mem[_391 + _358 + stor7.length.field_1 + 69 len ceil32(_639) + 32]
        if bool(stor7.length) != 1:
            _398 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_398] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_398) <= _398:
                _606 = mem[64]
                mem[64] = _398 + 5
                mem[_398 + 5] = 32
                _640 = mem[_606]
                mem[_398 + 37] = mem[_606]
                mem[_398 + 69 len ceil32(_640)] = mem[_606 + 32 len ceil32(_640)]
                if ceil32(_640) > _640:
                    mem[_640 + _398 + 69] = 0
                return 32, mem[_398 + 37 len ceil32(_640) + 32]
            _607 = mem[64]
            mem[64] = _398 + 5
            mem[_398 + 5] = 32
            _641 = mem[_607]
            mem[_398 + 37] = mem[_607]
            mem[_398 + 69 len ceil32(_641)] = mem[_607 + 32 len ceil32(_641)]
            if ceil32(_641) > _641:
                mem[_641 + _398 + 69] = 0
            return 32, mem[_398 + 37 len ceil32(_641) + 32]
        mem[0] = 7
        idx = 0
        s = 0
        while idx < stor7.length.field_1:
            mem[idx + _358 + 32] = stor7[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _587 = mem[96]
        mem[_358 + stor7.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_587 + _358 + stor7.length.field_1 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_587) <= _587:
            _800 = mem[64]
            mem[64] = _587 + _358 + stor7.length.field_1 + 37
            mem[_587 + _358 + stor7.length.field_1 + 37] = 32
            _816 = mem[_800]
            mem[_587 + _358 + stor7.length.field_1 + 69] = mem[_800]
            mem[_587 + _358 + stor7.length.field_1 + 101 len ceil32(_816)] = mem[_800 + 32 len ceil32(_816)]
            if ceil32(_816) > _816:
                mem[_816 + _587 + _358 + stor7.length.field_1 + 101] = 0
            return 32, mem[_587 + _358 + stor7.length.field_1 + 69 len ceil32(_816) + 32]
        _801 = mem[64]
        mem[64] = _587 + _358 + stor7.length.field_1 + 37
        mem[_587 + _358 + stor7.length.field_1 + 37] = 32
        _817 = mem[_801]
        mem[_587 + _358 + stor7.length.field_1 + 69] = mem[_801]
        mem[_587 + _358 + stor7.length.field_1 + 101 len ceil32(_817)] = mem[_801 + 32 len ceil32(_817)]
        if ceil32(_817) > _817:
            mem[_817 + _587 + _358 + stor7.length.field_1 + 101] = 0
        return 32, mem[_587 + _358 + stor7.length.field_1 + 69 len ceil32(_817) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[96]:
            revert with 0, 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _359 = mem[64]
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor7.length):
            mem[mem[64] + 32] = Mask(248, 8, stor7.length)
            _388 = mem[96]
            mem[mem[64] + (uint255(stor7.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_388 + _359 + (uint255(stor7.length) * 0.5) + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_388) <= _388:
                _608 = mem[64]
                mem[64] = _388 + _359 + (uint255(stor7.length) * 0.5) + 37
                mem[_388 + _359 + (uint255(stor7.length) * 0.5) + 37] = 32
                _642 = mem[_608]
                mem[_388 + _359 + (uint255(stor7.length) * 0.5) + 69] = mem[_608]
                mem[_388 + _359 + (uint255(stor7.length) * 0.5) + 101 len ceil32(_642)] = mem[_608 + 32 len ceil32(_642)]
                if ceil32(_642) > _642:
                    mem[_642 + _388 + _359 + (uint255(stor7.length) * 0.5) + 101] = 0
                return 32, mem[_388 + _359 + (uint255(stor7.length) * 0.5) + 69 len ceil32(_642) + 32]
            _609 = mem[64]
            mem[64] = _388 + _359 + (uint255(stor7.length) * 0.5) + 37
            mem[_388 + _359 + (uint255(stor7.length) * 0.5) + 37] = 32
            _643 = mem[_609]
            mem[_388 + _359 + (uint255(stor7.length) * 0.5) + 69] = mem[_609]
            mem[_388 + _359 + (uint255(stor7.length) * 0.5) + 101 len ceil32(_643)] = mem[_609 + 32 len ceil32(_643)]
            if ceil32(_643) > _643:
                mem[_643 + _388 + _359 + (uint255(stor7.length) * 0.5) + 101] = 0
            return 32, mem[_388 + _359 + (uint255(stor7.length) * 0.5) + 69 len ceil32(_643) + 32]
        if bool(stor7.length) != 1:
            _392 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_392] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_392) <= _392:
                _611 = mem[64]
                mem[64] = _392 + 5
                mem[_392 + 5] = 32
                _644 = mem[_611]
                mem[_392 + 37] = mem[_611]
                mem[_392 + 69 len ceil32(_644)] = mem[_611 + 32 len ceil32(_644)]
                if ceil32(_644) > _644:
                    mem[_644 + _392 + 69] = 0
                return 32, mem[_392 + 37 len ceil32(_644) + 32]
            _612 = mem[64]
            mem[64] = _392 + 5
            mem[_392 + 5] = 32
            _645 = mem[_612]
            mem[_392 + 37] = mem[_612]
            mem[_392 + 69 len ceil32(_645)] = mem[_612 + 32 len ceil32(_645)]
            if ceil32(_645) > _645:
                mem[_645 + _392 + 69] = 0
            return 32, mem[_392 + 37 len ceil32(_645) + 32]
        mem[0] = 7
        idx = 0
        s = 0
        while idx < uint255(stor7.length) * 0.5:
            mem[idx + _359 + 32] = stor7[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _588 = mem[96]
        mem[_359 + (uint255(stor7.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_588 + _359 + (uint255(stor7.length) * 0.5) + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_588) <= _588:
            _802 = mem[64]
            mem[64] = _588 + _359 + (uint255(stor7.length) * 0.5) + 37
            mem[_588 + _359 + (uint255(stor7.length) * 0.5) + 37] = 32
            _818 = mem[_802]
            mem[_588 + _359 + (uint255(stor7.length) * 0.5) + 69] = mem[_802]
            mem[_588 + _359 + (uint255(stor7.length) * 0.5) + 101 len ceil32(_818)] = mem[_802 + 32 len ceil32(_818)]
            if ceil32(_818) > _818:
                mem[_818 + _588 + _359 + (uint255(stor7.length) * 0.5) + 101] = 0
            return 32, mem[_588 + _359 + (uint255(stor7.length) * 0.5) + 69 len ceil32(_818) + 32]
        _803 = mem[64]
        mem[64] = _588 + _359 + (uint255(stor7.length) * 0.5) + 37
        mem[_588 + _359 + (uint255(stor7.length) * 0.5) + 37] = 32
        _819 = mem[_803]
        mem[_588 + _359 + (uint255(stor7.length) * 0.5) + 69] = mem[_803]
        mem[_588 + _359 + (uint255(stor7.length) * 0.5) + 101 len ceil32(_819)] = mem[_803 + 32 len ceil32(_819)]
        if ceil32(_819) > _819:
            mem[_819 + _588 + _359 + (uint255(stor7.length) * 0.5) + 101] = 0
        return 32, mem[_588 + _359 + (uint255(stor7.length) * 0.5) + 69 len ceil32(_819) + 32]
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor7.length):
        mem[mem[64] + 32] = Mask(248, 8, stor7.length)
        _393 = mem[96]
        mem[mem[64] + stor7.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[96] + mem[64] + stor7.length.field_1 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(mem[96]) <= mem[96]:
            _613 = mem[64]
            mem[64] = mem[96] + mem[64] + stor7.length.field_1 + 37
            mem[mem[96] + _359 + stor7.length.field_1 + 37] = 32
            _646 = mem[_613]
            mem[_393 + _359 + stor7.length.field_1 + 69] = mem[_613]
            mem[_393 + _359 + stor7.length.field_1 + 101 len ceil32(_646)] = mem[_613 + 32 len ceil32(_646)]
            if ceil32(_646) > _646:
                mem[_646 + _393 + _359 + stor7.length.field_1 + 101] = 0
            return 32, mem[_393 + _359 + stor7.length.field_1 + 69 len ceil32(_646) + 32]
        _614 = mem[64]
        mem[64] = mem[96] + mem[64] + stor7.length.field_1 + 37
        mem[mem[96] + _359 + stor7.length.field_1 + 37] = 32
        _647 = mem[_614]
        mem[_393 + _359 + stor7.length.field_1 + 69] = mem[_614]
        mem[_393 + _359 + stor7.length.field_1 + 101 len ceil32(_647)] = mem[_614 + 32 len ceil32(_647)]
        if ceil32(_647) > _647:
            mem[_647 + _393 + _359 + stor7.length.field_1 + 101] = 0
        return 32, mem[_393 + _359 + stor7.length.field_1 + 69 len ceil32(_647) + 32]
    if bool(stor7.length) != 1:
        _400 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_400] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_400) <= _400:
            _616 = mem[64]
            mem[64] = _400 + 5
            mem[_400 + 5] = 32
            _648 = mem[_616]
            mem[_400 + 37] = mem[_616]
            mem[_400 + 69 len ceil32(_648)] = mem[_616 + 32 len ceil32(_648)]
            if ceil32(_648) > _648:
                mem[_648 + _400 + 69] = 0
            return 32, mem[_400 + 37 len ceil32(_648) + 32]
        _617 = mem[64]
        mem[64] = _400 + 5
        mem[_400 + 5] = 32
        _649 = mem[_617]
        mem[_400 + 37] = mem[_617]
        mem[_400 + 69 len ceil32(_649)] = mem[_617 + 32 len ceil32(_649)]
        if ceil32(_649) > _649:
            mem[_649 + _400 + 69] = 0
        return 32, mem[_400 + 37 len ceil32(_649) + 32]
    mem[0] = 7
    idx = 0
    s = 0
    while idx < stor7.length.field_1:
        mem[idx + _359 + 32] = stor7[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _589 = mem[96]
    mem[_359 + stor7.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_589 + _359 + stor7.length.field_1 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
    if ceil32(_589) <= _589:
        _804 = mem[64]
        mem[64] = _589 + _359 + stor7.length.field_1 + 37
        mem[_589 + _359 + stor7.length.field_1 + 37] = 32
        _820 = mem[_804]
        mem[_589 + _359 + stor7.length.field_1 + 69] = mem[_804]
        mem[_589 + _359 + stor7.length.field_1 + 101 len ceil32(_820)] = mem[_804 + 32 len ceil32(_820)]
        if ceil32(_820) > _820:
            mem[_820 + _589 + _359 + stor7.length.field_1 + 101] = 0
        return 32, mem[_589 + _359 + stor7.length.field_1 + 69 len ceil32(_820) + 32]
    _805 = mem[64]
    mem[64] = _589 + _359 + stor7.length.field_1 + 37
    mem[_589 + _359 + stor7.length.field_1 + 37] = 32
    _821 = mem[_805]
    mem[_589 + _359 + stor7.length.field_1 + 69] = mem[_805]
    mem[_589 + _359 + stor7.length.field_1 + 101 len ceil32(_821)] = mem[_805 + 32 len ceil32(_821)]
    if ceil32(_821) > _821:
        mem[_821 + _589 + _359 + stor7.length.field_1 + 101] = 0
    return 32, mem[_589 + _359 + stor7.length.field_1 + 69 len ceil32(_821) + 32]
}



}
