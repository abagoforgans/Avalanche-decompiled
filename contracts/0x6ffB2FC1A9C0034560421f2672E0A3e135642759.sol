contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of struct withdrawals;

function withdrawals(address arg1) payable {
    require calldata.size - 4 >= 32
    return withdrawals[arg1].field_0, withdrawals[arg1].field_256, withdrawals[arg1].field_512
}

function owner() payable {
    return owner
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

function cancelWithdrawal(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not withdrawals[address(arg1)].field_0:
        revert with 0, 'unknown withdrawal'
    withdrawals[address(arg1)].field_0 = 0
    withdrawals[address(arg1)].field_256 = 0
    withdrawals[address(arg1)].field_512 = 0
    emit CancelWithdrawal(withdrawals[address(arg1)].field_512, arg1, withdrawals[address(arg1)].field_256, withdrawals[address(arg1)].field_0);
    stor1 = 1
}

function announceWithdrawal(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if withdrawals[address(arg1)].field_0:
        revert with 0, 'existing withdrawal'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'insufficient balance'
    withdrawals[address(arg1)].field_0 = block.timestamp
    withdrawals[address(arg1)].field_256 = arg2
    withdrawals[address(arg1)].field_512 = arg3
    emit AnnounceWithdrawal(arg3, arg1, arg2, block.timestamp);
    stor1 = 1
}

function withdraw(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not withdrawals[address(arg1)].field_0:
        revert with 0, 'unknown withdrawal'
    if arg2 != withdrawals[address(arg1)].field_256:
        revert with 0, 'to mismatch'
    if arg3 != withdrawals[address(arg1)].field_512:
        revert with 0, 'amount mismatch'
    if withdrawals[address(arg1)].field_0 + (24 * 3600) > block.timestamp:
        revert with 0, 'not available'
    if block.timestamp >= withdrawals[address(arg1)].field_0 + (48 * 24 * 3600):
        revert with 0, 'not available'
    if arg3:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg3) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3
            if not unknown_0xa9059cbb(?????), address(arg2) << 64:
                revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    withdrawals[address(arg1)].field_0 = 0
    withdrawals[address(arg1)].field_256 = 0
    withdrawals[address(arg1)].field_512 = 0
    emit Withdraw(arg3, arg1, arg2, withdrawals[address(arg1)].field_0);
    stor1 = 1
}



}
