contract main {




// =====================  Runtime code  =====================


address policyAddress;
address stor1;
array of address sub_dbaf8a43;

function policy() payable {
    return policyAddress
}

function sub_dbaf8a43(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_dbaf8a43.length
    return sub_dbaf8a43[arg1]
}

function _fallback() payable {
    revert
}

function renounceManagement() payable {
    if policyAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipPushed(policyAddress, 0);
    policyAddress = 0
}

function sub_0d578746(?) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < sub_dbaf8a43.length
    sub_dbaf8a43[arg1] = 0
}

function sub_2820406b(?) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    sub_dbaf8a43.length++
    sub_dbaf8a43[sub_dbaf8a43.length] = arg1
}

function pullManagement() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734f776e61626c653a206d757374206265206e6577206f776e657220746f2070756c,
                    mem[198 len 30]
    emit OwnershipPulled(policyAddress, stor1);
    policyAddress = stor1
}

function pushManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipPushed(policyAddress, arg1);
    stor1 = arg1
}

function redeemAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    idx = 0
    while idx < sub_dbaf8a43.length:
        mem[0] = 2
        if sub_dbaf8a43[idx]:
            require idx < sub_dbaf8a43.length
            mem[0] = 2
            mem[100] = arg1
            require ext_code.size(sub_dbaf8a43[idx])
            staticcall sub_dbaf8a43[idx].pendingPayoutFor(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require idx < sub_dbaf8a43.length
                mem[0] = 2
                mem[100] = arg1
                mem[132] = arg2
                require ext_code.size(sub_dbaf8a43[idx])
                call sub_dbaf8a43[idx].redeem(address arg1, bool arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg2
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
