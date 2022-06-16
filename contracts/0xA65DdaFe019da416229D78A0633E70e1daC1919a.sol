contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
mapping of uint8 stor1;
address stor2;
address sub_b12cbc76Address;
uint256 sub_d575fe64;
uint256 sub_0ff4a60e;
mapping of address sponsors;
mapping of uint256 balances;
mapping of uint256 sub_842b2156;

function sub_0ff4a60e(?) payable {
    return sub_0ff4a60e
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function paused() payable {
    return bool(stor0)
}

function sub_842b2156(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_842b2156[arg1]
}

function owner() payable {
    return owner
}

function sub_af2f20fb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_842b2156[address(arg1)]
}

function sub_b12cbc76(?) payable {
    return sub_b12cbc76Address
}

function sponsors(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sponsors[arg1]
}

function sub_d575fe64(?) payable {
    return sub_d575fe64
}

function getBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[address(arg1)]
}

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
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

function pause() payable {
    if not stor1[msg.sender]:
        revert with 0, 'Not authorized'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not stor1[msg.sender]:
        revert with 0, 'Not authorized'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function setAuthorizedAddress(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with 0, 'Not authorized'
    stor1[address(arg1)] = uint8(arg2)
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

function sub_d7f9094d(?) payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    if not balances[msg.sender]:
        revert with 0, 'No commission to withdraw'
    balances[msg.sender] = 0
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args sub_b12cbc76Address, balances[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Withdraw(balances[msg.sender], msg.sender);
}

function sub_b996dce8(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor1[msg.sender]:
        revert with 0, 'Not authorized'
    if stor0:
        revert with 0, 'Pausable: paused'
    if not sponsors[address(arg1)]:
        sponsors[address(arg1)] = address(arg2)
    if not sponsors[address(arg1)]:
        revert with 0, 'Referral not found'
    if address(arg2) != sponsors[address(arg1)]:
        revert with 0, 'Invalid sponsor'
    if arg3 and sub_d575fe64 > -1 / arg3:
        revert with 0, 17
    if balances[address(arg2)] > !(arg3 * sub_d575fe64 / 100):
        revert with 0, 17
    balances[address(arg2)] += arg3 * sub_d575fe64 / 100
    if sub_842b2156[address(arg2)] > !(arg3 * sub_d575fe64 / 100):
        revert with 0, 17
    sub_842b2156[address(arg2)] += arg3 * sub_d575fe64 / 100
    if sub_0ff4a60e > !(arg3 * sub_d575fe64 / 100):
        revert with 0, 17
    sub_0ff4a60e += arg3 * sub_d575fe64 / 100
    emit LogReferral(address(arg1), arg3 * sub_d575fe64 / 100, address(arg2));
}



}
