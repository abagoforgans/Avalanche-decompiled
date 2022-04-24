contract main {




// =====================  Runtime code  =====================


const nftAddress = 0x1358005777d3d7193a2426a76d434f9bba0a55

const nftLength = mem[mem[96 len 4], Mask(224, 32, this.address) >> 32 + 96]


address owner;
array of address minters;
mapping of uint256 sub_829b53d0;
uint8 claimable;

function sub_829b53d0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_829b53d0[arg1]
}

function minters(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < minters.length
    return minters[arg1]
}

function owner() payable {
    return owner
}

function sub_95d05ce7(?) payable {
    return minters.length
}

function claimable() payable {
    return bool(claimable)
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

function recoverNFT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
    staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Contract not NFT owner'
    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
    call ????????????????????????????????????????.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claim() payable {
    if not claimable:
        revert with 0, 'Claim not open yet'
    if not sub_829b53d0[msg.sender]:
        revert with 0, 'Not eligible'
    if 5000 == sub_829b53d0[msg.sender]:
        revert with 0, 'Already claimed'
    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
    staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args sub_829b53d0[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Contract not NFT owner'
    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
    call ????????????????????????????????????????.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, sub_829b53d0[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_829b53d0[address(msg.sender)] = 5000
}

function sub_cdcbe9ee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not claimable:
        revert with 0, 'Claim not open yet'
    if not sub_829b53d0[address(arg1)]:
        revert with 0, 'Not eligible'
    if 5000 == sub_829b53d0[address(arg1)]:
        revert with 0, 'Already claimed'
    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
    staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args sub_829b53d0[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Contract not NFT owner'
    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
    call ????????????????????????????????????????.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), address(arg1), sub_829b53d0[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_829b53d0[address(arg1)] = 5000
}

function sub_6c55507b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a55)
    staticcall 0x1358005777d3d7193a2426a76d434f9bba0a55.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'maxTokenId too high'
    idx = 0
    while idx <= arg1:
        mem[mem[64] + 4] = idx
        require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
        staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.minterOf(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _23 = mem[_22]
        require mem[_22] == mem[_22 + 12 len 20]
        s = 0
        while s < minters.length:
            mem[0] = 1
            if minters[s] != address(_23):
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        minters.length++
        mem[0] = 1
        minters[minters.length] = address(_23)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_b90f7cbb(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 0x8462151c00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
    staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.tokensOfOwner(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _9 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _9
    require return_data.size >= _8 + (32 * _9) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _9] = mem[_8 + 128 len 32 * _9]
    if _9 < arg1:
        revert with 0, 'Not enough NFTs to deposit'
    idx = 0
    while idx < arg1:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _32 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _32
        require ext_code.size(0x1358005777d3d7193a2426a76d434f9bba0a55)
        call 0x001358005777d3d7193a2426a76d434f9bba0a55.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _32
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_aa773c19(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if claimable:
        revert with 0, 'Claims already set'
    mem[96] = 0x8462151c00000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55)
    staticcall 0xfe0000000000000000000000001358005777d3d7193a2426a76d434f9bba0a55.tokensOfOwner(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _10 = mem[96 len 4], Mask(224, 32, this.address) >> 32
    require mem[96 len 4], Mask(224, 32, this.address) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, this.address) >> 32 + 127 < return_data.size + 96
    _11 = mem[mem[96 len 4], Mask(224, 32, this.address) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, this.address) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, this.address) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, this.address) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, this.address) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _11
    require return_data.size >= _10 + (32 * _11) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _11] = mem[_10 + 128 len 32 * _11]
    if minters.length != _11:
        revert with 0, 'Invalid amount of tokens owned'
    idx = 0
    while idx < _11:
        _54 = mem[ceil32(return_data.size) + 96]
        if mem[ceil32(return_data.size) + 96] < idx:
            revert with 0, 17
        mem[mem[64] + 32] = block.timestamp
        _58 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        if not _54 - idx:
            revert with 0, 18
        if idx > !(sha3(mem[_58 + 32 len mem[_58]]) % _54 - idx):
            revert with 0, 17
        if idx + (sha3(mem[_58 + 32 len mem[_58]]) % _54 - idx) >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _64 = mem[(32 * idx + (sha3(mem[_58 + 32 len mem[_58]]) % _54 - idx)) + ceil32(return_data.size) + 128]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if idx + (sha3(mem[_58 + 32 len mem[_58]]) % _54 - idx) >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[(32 * idx + (sha3(mem[_58 + 32 len mem[_58]]) % _54 - idx)) + ceil32(return_data.size) + 128] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = _64
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < minters.length:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[0] = minters[idx]
        mem[32] = 2
        sub_829b53d0[stor1[idx]] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    claimable = 1
}



}
