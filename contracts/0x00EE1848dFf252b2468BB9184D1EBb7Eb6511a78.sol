contract main {




// =====================  Runtime code  =====================


address owner;
address adminAddress;
uint256 sub_9b3e0ce2;

function owner() {
    return owner
}

function sub_9b3e0ce2(?) {
    return sub_9b3e0ce2
}

function admin() {
    return adminAddress
}

function sub_1687fe8e(?) {
    if owner != msg.sender:
        if adminAddress != msg.sender:
            revert with 0, 'Caller is not the owner.'
    sub_9b3e0ce2 = 0
}

function withdrawETH() {
    if owner != msg.sender:
        if adminAddress != msg.sender:
            revert with 0, 'Caller is not the owner.'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawERC20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if adminAddress != msg.sender:
            revert with 0, 'Caller is not the owner.'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f186595b(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[132] == address(cd[132])
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ('cd', 36).length < 2:
        revert with 0, 17
    if ('cd', 36).length - 2 >= ('cd', 36).length:
        revert with 0, 50
    require cd[((32 * ('cd', 36).length - 2) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 2) + cd[36] + 36)])
    if ('cd', 36).length < 1:
        revert with 0, 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 0, 50
    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(cd[((32 * ('cd', 36).length - 2) + cd[36] + 36)]), address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, '1'
    if 1 > !block.timestamp:
        revert with 0, 17
    idx = 0
    s = (2 * ceil32(return_data.size)) + 260
    t = cd[36] + 36
    while idx < ('cd', 36).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value cd[68] wei
         gas gas_remaining wei
        args cd[100], Array(len=('cd', 36).length, data=mem[(2 * ceil32(return_data.size)) + 260 len 32 * ('cd', 36).length]), address(cd[132]), block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xe086e5ec(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x1687fe8e(?????):
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                require unknown_0x9b3e0ce2(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return sub_9b3e0ce2
            require not msg.value
            if owner != msg.sender:
                if adminAddress != msg.sender:
                    revert with 0, 'Caller is not the owner.'
            sub_9b3e0ce2 = 0
        else:
            if unknown_0xe086e5ec(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    if adminAddress != msg.sender:
                        revert with 0, 'Caller is not the owner.'
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xf186595b(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xf4f3b200(?????):
                        require unknown_0xf851a440(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return adminAddress
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        if adminAddress != msg.sender:
                            revert with 0, 'Caller is not the owner.'
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require calldata.size - 4 >= 160
                    require cd[4] == address(cd[4])
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    require ('cd', 36).length <= test266151307()
                    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                    require cd[132] == address(cd[132])
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ('cd', 36).length < 2:
                        revert with 0, 17
                    if ('cd', 36).length - 2 >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * ('cd', 36).length - 2) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 2) + cd[36] + 36)])
                    if ('cd', 36).length < 1:
                        revert with 0, 17
                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * ('cd', 36).length - 2) + cd[36] + 36)]), address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, '1'
                    if 1 > !block.timestamp:
                        revert with 0, 17
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 292
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value cd[68] wei
                         gas gas_remaining wei
                        args cd[100], Array(len=('cd', 36).length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]), address(cd[132]), block.timestamp + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
