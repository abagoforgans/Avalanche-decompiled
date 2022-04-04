contract main {




// =====================  Runtime code  =====================


const sub_98e5f3c4(?) = (8760 * 24 * 3600)

const NAME = 'LockupContractFactory'


address owner;
address sub_817f6481Address;
mapping of address sub_d83c72db;

function sub_817f6481(?) payable {
    return sub_817f6481Address
}

function owner() payable {
    return owner
}

function isRegisteredLockup(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(address(sub_d83c72db[address(arg1)]))
}

function sub_d83c72db(?) payable {
    require calldata.size - 4 >= 32
    return address(sub_d83c72db[arg1])
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function setLQTYTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg1):
        revert with 0, 'Account code size cannot be zero'
    sub_817f6481Address = arg1
    emit LQTYTokenAddressSet(arg1);
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function deployLockupContract(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not sub_817f6481Address:
        revert with 0, 'LCF: LQTY Address is not set'
    create contract with 0 wei
                    code: code.data[1459 len 1828], sub_817f6481Address, address(arg1), arg2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(sub_d83c72db[address(create.new_address)]) = msg.sender or Mask(96, 160, uint256(sub_d83c72db[address(create.new_address)]))
    emit LockupContractDeployedThroughFactory(address(create.new_address), address(arg1), arg2, msg.sender);
}



}
