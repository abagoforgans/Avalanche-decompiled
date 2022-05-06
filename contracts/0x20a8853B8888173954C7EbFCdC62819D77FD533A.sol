contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address updaterAddress;

function owner() payable {
    return owner
}

function updater() payable {
    return updaterAddress
}

function _fallback() payable {
    revert
}

function slashUpdater(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, '!home'
    emit FakeSlashed(arg1);
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setHome(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg1):
        revert with 0, '!contract home'
    stor1 = arg1
    emit NewHome(arg1);
}

function setUpdater(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    updaterAddress = arg1
    require ext_code.size(stor1)
    call stor1.0x9d54f419 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
