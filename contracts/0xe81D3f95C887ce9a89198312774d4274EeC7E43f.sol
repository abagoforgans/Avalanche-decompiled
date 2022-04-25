contract main {




// =====================  Runtime code  =====================


address owner;
uint256 merkleRoot;
address tokenAddress;
mapping of uint8 stor3;

function merkleRoot() payable {
    return merkleRoot
}

function owner() payable {
    return owner
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRoot(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    merkleRoot = arg1
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

function emergencyWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function claim(uint256 arg1, bytes32[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 3
    if stor3[msg.sender]:
        revert with 0, 'HCTAirdrop::claim: HAD_CLAIMED'
    mem[128] = address(msg.sender)
    mem[148] = arg1
    mem[96] = 52
    mem[64] = 180
    idx = 0
    s = 0
    while idx < arg2.length:
        if s + sha3(mem[128 len mem[96]]) > cd[((32 * idx) + arg2 + 36)]:
            mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
            mem[mem[64] + 64] = s + sha3(mem[128 len mem[96]])
            _30 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = sha3(mem[_30 + 32 len mem[_30]])
            continue 
        mem[mem[64] + 32] = s + sha3(mem[128 len mem[96]])
        mem[mem[64] + 64] = cd[((32 * idx) + arg2 + 36)]
        _34 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = sha3(mem[_34 + 32 len mem[_34]])
        continue 
    if merkleRoot != s:
        revert with 0, 'HCTAirdrop::claim: Invalid proof.'
    mem[0] = msg.sender
    mem[32] = 3
    stor3[msg.sender] = 1
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _38 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_38] == bool(mem[_38])
    emit Claim(arg1, msg.sender);
}



}
