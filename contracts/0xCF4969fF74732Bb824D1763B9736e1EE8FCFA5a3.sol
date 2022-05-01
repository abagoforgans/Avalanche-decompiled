contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 sub_7f2f2674;
uint32 stor2;
address sub_9b0294b8Address;
address stor3;
mapping of uint256 stor4;

function paused() {
    return bool(stor0)
}

function sub_7f2f2674(?) {
    return sub_7f2f2674
}

function owner() {
    return owner
}

function sub_9b0294b8(?) {
    return address(sub_9b0294b8Address)
}

function _fallback() payable {
    revert
}

function sub_df578290(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor3 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_448c5292(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor4[address(arg1)] = arg2
}

function managePause(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        if not stor0:
            revert with 0, 'Pausable: not paused'
        stor0 = 0
        emit Unpaused(msg.sender);
    else:
        if stor0:
            revert with 0, 'Pausable: paused'
        stor0 = 1
        emit Paused(msg.sender);
}

function updateTipstaCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6e596f75207265616c6c792077616e7420746f2066756e64207075626c696320676f6f64,
                    mem[200 len 28]
    sub_7f2f2674 = arg1
}

function updateFundsAccount(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x64596f752063616e27742073656e642066756e647320746f207468652047656e65736973206163636f756e,
                    mem[207 len 21]
    address(sub_9b0294b8Address) = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function becomeATipsta() payable {
    if msg.value < sub_7f2f2674:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654e6f7420656e6f7567682066756e647320666f722074686973207472616e73616374696f,
                    mem[201 len 27]
    if stor0:
        revert with 0, 'Pausable: paused'
    call address(sub_9b0294b8Address) with:
       value sub_7f2f2674 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Unable to pay tipsta fee'
    require ext_code.size(stor3)
    call stor3.0x5873bca0 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_7f2f2674 > msg.value:
        revert with 0, 'SafeMath: subtraction overflow'
    if msg.value - sub_7f2f2674:
        call msg.sender with:
           value msg.value - sub_7f2f2674 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Unable to refund excess ETH'
}

function sub_e70c9afd(?) {
    require calldata.size - 4 >= 64
    if not stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c5468697320746f6b656e206973206e6f7420617070726f76656420746f206265207573656420686572,
                    mem[206 len 22]
    if arg2 != stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x72596f7520617265206e6f7420706179696e672074686520657861637420636f737420666f72207468697320746f6b65,
                    mem[212 len 16]
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73506c6561736520617070726f76652054697073746120636f6e747261637420617320746f6b656e207370656e6465,
                    mem[211 len 17]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6e596f7520646f6e2774206861766520656e6f75676820746f6b656e2062616c616e63,
                    mem[199 len 29]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(sub_9b0294b8Address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call arg1 with:
       funct uint32(stor2)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(sub_9b0294b8Address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(stor3)
    call stor3.0x5873bca0 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
