contract main {




// =====================  Runtime code  =====================


const sub_20ed5459(?) = 6


address owner;
uint256 count;
array of address sub_af174784;
array of uint256 sub_6de29914;
uint256 sub_9294a030;
address tokenAddress;

function count() payable {
    return count
}

function sub_6de29914(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 6
    return sub_6de29914[arg1]
}

function owner() payable {
    return owner
}

function sub_9294a030(?) payable {
    return sub_9294a030
}

function sub_af174784(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 6
    return sub_af174784[arg1]
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateMinAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9294a030 = arg1
}

function update(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 6:
        revert with 0, '!Index out of range'
    sub_af174784[arg1] = arg2
    sub_6de29914[arg1] = arg3
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

function mint(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > 10:
        revert with 0, '!Too many'
    if arg2 >= 6:
        revert with 'NH{q', 50
    if arg1 and sub_6de29914[arg2] > -1 / arg1:
        revert with 'NH{q', 17
    mem[96] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    mem[132] = arg1 * sub_6de29914[arg2]
    require ext_code.size(tokenAddress)
    call tokenAddress.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1 * sub_6de29914[arg2]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg1:
        if arg2 < 6:
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(sub_af174784[arg2])
            call sub_af174784[arg2].mintNFT(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_11] == mem[_11]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
