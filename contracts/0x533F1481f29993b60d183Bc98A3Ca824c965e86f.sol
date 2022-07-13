contract main {




// =====================  Runtime code  =====================


uint64 stor0;
uint64 accounts; offset 160
address owner;
mapping of uint64 accountID;
mapping of address sub_60330d79;
mapping of struct sub_f227a99f;
mapping of struct sub_748e6e18;
address stor5;
address stor6;
mapping of struct sub_8028a9fd;
mapping of struct sub_5f3c37f9;

function sub_5f3c37f9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint64(arg1)
    require arg2 == address(arg2)
    return sub_5f3c37f9[arg1][arg2].field_0, sub_5f3c37f9[arg1][arg2].field_256
}

function sub_60330d79(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    return sub_60330d79[arg1]
}

function accounts() payable {
    return accounts
}

function accountID(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return accountID[arg1]
}

function sub_748e6e18(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint64(arg2)
    return sub_748e6e18[arg1][arg2].field_0, sub_748e6e18[arg1][arg2].field_64
}

function sub_8028a9fd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    return sub_8028a9fd[arg1].field_0, sub_8028a9fd[arg1].field_256, sub_8028a9fd[arg1].field_416
}

function owner() payable {
    return owner
}

function sub_f227a99f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f227a99f[arg1].field_0, sub_f227a99f[arg1].field_0, sub_f227a99f[arg1].field_128
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

function existing(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if accountID[address(arg1)]:
        return 1
    else:
        return 0
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        revert with 0, 'Caller is not timelock.'
    stor5 = arg1
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

function addAuth(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor5 != msg.sender:
        revert with 0, '!trustFactory'
    require ext_code.size(arg2)
    staticcall arg2.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != arg1:
        revert with 0, 'Account deletion verification failed!'
    if accounts == test266151307():
        revert with 'NH{q', 17
    accounts = uint64(accounts + 1)
    accountID[address(arg2)] = accounts
    sub_60330d79[stor0] = arg2
    if sub_f227a99f[address(arg1)].field_64:
        sub_748e6e18[address(arg1)][stor1[address(arg2)]].field_0 = sub_f227a99f[address(arg1)].field_64
        sub_748e6e18[address(arg1)][stor3[address(arg1)].field_64].field_64 = accountID[address(arg2)]
    if not sub_f227a99f[address(arg1)].field_0:
        sub_f227a99f[address(arg1)].field_0 = accountID[address(arg2)]
    sub_f227a99f[address(arg1)].field_64 = accountID[address(arg2)]
    if sub_f227a99f[address(arg1)].field_128 or 0 or 0 > test266151307():
        revert with 'NH{q', 17
    if uint64((sub_f227a99f[address(arg1)].field_128 or 0 or 0) + 1) < sub_f227a99f[address(arg1)].field_128 or 0 or 0:
        revert with 0, 'ds-math-add-overflow'
    sub_f227a99f[address(arg1)].field_128 = uint64((sub_f227a99f[address(arg1)].field_128 or 0 or 0) + 1)
    if sub_8028a9fd[stor1[address(arg2)]].field_256:
        sub_5f3c37f9[stor1[address(arg2)]][address(arg1)].field_0 = sub_8028a9fd[stor1[address(arg2)]].field_256
        sub_5f3c37f9[stor1[address(arg2)]][stor7[stor1[address(arg2)]].field_256].field_256 = arg1
    if not sub_8028a9fd[stor1[address(arg2)]].field_0:
        sub_8028a9fd[stor1[address(arg2)]].field_0 = arg1
    sub_8028a9fd[stor1[address(arg2)]].field_256 = arg1
    if sub_8028a9fd[stor1[address(arg2)]].field_416 > test266151307():
        revert with 'NH{q', 17
    if uint64(sub_8028a9fd[stor1[address(arg2)]].field_416 + 1) < sub_8028a9fd[stor1[address(arg2)]].field_416:
        revert with 0, 'ds-math-add-overflow'
    sub_8028a9fd[stor1[address(arg2)]].field_416 = uint64(sub_8028a9fd[stor1[address(arg2)]].field_416 + 1)
    emit NewAccount(address(arg1), arg2);
}

function removeAuth(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not accountID[address(arg2)]:
        revert with 0, 'not-account'
    require ext_code.size(arg2)
    staticcall arg2.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != arg1:
        revert with 0, 'Account deletion verification failed!'
    if arg2 != msg.sender:
        revert with 0, 'Account deletion verification failed!'
    if sub_748e6e18[address(arg1)][stor1[address(arg2)]].field_0:
        sub_748e6e18[address(arg1)][sub_748e6e18[address(arg1)][stor1[address(arg2)]].field_0].field_64 = sub_748e6e18[address(arg1)][stor1[address(arg2)]].field_64
    if sub_748e6e18[address(arg1)][stor1[address(arg2)]].field_64:
        sub_748e6e18[address(arg1)][sub_748e6e18[address(arg1)][stor1[address(arg2)]].field_0].field_0 = sub_748e6e18[address(arg1)][stor1[address(arg2)]].field_0
    if not sub_748e6e18[address(arg1)][stor1[address(arg2)]].field_0:
        sub_f227a99f[address(arg1)].field_0 = sub_748e6e18[address(arg1)][stor1[address(arg2)]].field_64
    if not sub_748e6e18[address(arg1)][stor1[address(arg2)]].field_64:
        sub_f227a99f[address(arg1)].field_64 = sub_748e6e18[address(arg1)][stor1[address(arg2)]].field_0
    if sub_f227a99f[address(arg1)].field_128 < 1:
        revert with 'NH{q', 17
    if uint64(sub_f227a99f[address(arg1)].field_128 - 1) > sub_f227a99f[address(arg1)].field_128:
        revert with 0, 'ds-math-sub-underflow'
    sub_f227a99f[address(arg1)].field_128 = uint64(sub_f227a99f[address(arg1)].field_128 - 1)
    sub_748e6e18[address(arg1)][stor1[address(arg2)]].field_0 = 0
    if sub_5f3c37f9[stor1[address(arg2)]][address(arg1)].field_0:
        sub_5f3c37f9[stor1[address(arg2)]][sub_5f3c37f9[stor1[address(arg2)]][address(arg1)].field_0].field_256 = sub_5f3c37f9[stor1[address(arg2)]][address(arg1)].field_256
    if sub_5f3c37f9[stor1[address(arg2)]][address(arg1)].field_256:
        sub_5f3c37f9[stor1[address(arg2)]][sub_5f3c37f9[stor1[address(arg2)]][address(arg1)].field_256].field_0 = sub_5f3c37f9[stor1[address(arg2)]][address(arg1)].field_0
    if not sub_5f3c37f9[stor1[address(arg2)]][address(arg1)].field_0:
        sub_8028a9fd[stor1[address(arg2)]].field_0 = sub_5f3c37f9[stor1[address(arg2)]][address(arg1)].field_256
    if not sub_5f3c37f9[stor1[address(arg2)]][address(arg1)].field_256:
        sub_8028a9fd[stor1[address(arg2)]].field_256 = sub_5f3c37f9[stor1[address(arg2)]][address(arg1)].field_0
    if sub_8028a9fd[stor1[address(arg2)]].field_416 < 1:
        revert with 'NH{q', 17
    if uint64(sub_8028a9fd[stor1[address(arg2)]].field_416 - 1) > sub_8028a9fd[stor1[address(arg2)]].field_416:
        revert with 0, 'ds-math-sub-underflow'
    sub_8028a9fd[stor1[address(arg2)]].field_416 = uint64(sub_8028a9fd[stor1[address(arg2)]].field_416 - 1)
    sub_5f3c37f9[stor1[address(arg2)]][address(arg1)].field_0 = 0
    sub_5f3c37f9[stor1[address(arg2)]][address(arg1)].field_256 = 0
}



}
