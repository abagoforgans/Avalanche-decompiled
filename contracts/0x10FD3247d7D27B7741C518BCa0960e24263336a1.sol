contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 unlockTime;

function unlockTime() {
    return unlockTime
}

function owner() {
    return owner
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

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x76076880e1ebbce597e6e15c47386cd34de4930f)
    call 0x76076880e1ebbce597e6e15c47386cd34de4930f.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x76076880e1ebbce597e6e15c47386cd34de4930f)
    staticcall 0x76076880e1ebbce597e6e15c47386cd34de4930f.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 > -stor1 - 1:
        revert with 'NH{q', 17
    if arg1 + stor1 > 0xfffffffffffffffffffffffffffffffffffffffffdbcf93bf687a63bc3ffffff:
        revert with 'NH{q', 17
    if arg1 + stor1 + 700000000 * 10^18 > ext_call.return_data[0]:
        if block.timestamp < unlockTime:
            revert with 0, 'Too early to withdraw'
    if stor1 > -arg1 - 1:
        revert with 'NH{q', 17
    stor1 += arg1
    require ext_code.size(0x76076880e1ebbce597e6e15c47386cd34de4930f)
    call 0x76076880e1ebbce597e6e15c47386cd34de4930f.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
