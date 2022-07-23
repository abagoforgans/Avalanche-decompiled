contract main {




// =====================  Runtime code  =====================


const getContractBalance = eth.balance(this.address)


address nFTContractAddress;
address stor1;

function NFTContract() {
    return nFTContractAddress
}

function _fallback() payable {
    revert
}

function Withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Only Owner'
    if not stor1:
        revert with 0, 'Address cannot be Zero!'
    if arg1 <= 0:
        revert with 0, 'Amount cannot be Zero!'
    call stor1 with:
       value arg1 wei
         gas gas_remaining wei
    require ext_call.success
}

function TransferERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Only Owner'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_96e22a57(?) payable {
    require calldata.size - 4 >= 192
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg4 == uint8(arg4)
    require arg5 == uint8(arg5)
    if stor1 != msg.sender:
        revert with 0, 'Only Owner'
    idx = 0
    while idx < arg1:
        mem[96] = 0x4e5f67d400000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = 224
        mem[324] = arg2.length
        mem[356 len arg2.length] = arg2[all]
        mem[arg2.length + 356] = 0
        mem[164] = 0
        mem[196] = arg3
        mem[228] = uint8(arg4)
        mem[260] = uint8(arg5)
        mem[292] = arg6
        require ext_code.size(nFTContractAddress)
        call nFTContractAddress.0x4e5f67d4 with:
             gas gas_remaining wei
            args msg.sender, 224, 0, arg3, arg4 << 248, arg5 << 248, arg6, arg2.length, arg2[all], mem[arg2.length + 356 len ceil32(arg2.length) - arg2.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
