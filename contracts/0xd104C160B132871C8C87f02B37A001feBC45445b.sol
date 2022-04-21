contract main {




// =====================  Runtime code  =====================


#
#  - sub_2be01190(?)
#
address owner;
mapping of uint8 stor1;
uint256 sub_54fc49e2;

function sub_54fc49e2(?) payable {
    return sub_54fc49e2
}

function owner() payable {
    return owner
}

function sub_caecc2ba(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_7107a661(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_54fc49e2 = arg1
}

function addTrader(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function removeTrader(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function withdrawETH() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3d7acc6f(?) payable {
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
            gas gas_remaining wei
           args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    return ext_call.return_data[160]
}

function sub_e253b668(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if not stor1[msg.sender]:
        revert with 0, '!trader'
    call this.address with:
         gas gas_remaining wei
        args arg1[all]
    if not ext_call.success:
        emit 0x5757b10b: 1
}

function getUserAccountData(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160]
}

function withdrawERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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

function sub_3ba14b3d(?) payable {
    require calldata.size - 4 >= 192
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require (32 * ('cd', 132).length) + 128 >= 96 and (32 * ('cd', 132).length) + 128 <= test266151307()
    require calldata.size >= cd[132] + (32 * ('cd', 132).length) + 36
    idx = 0
    s = cd[132] + 36
    t = 128
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not stor1[msg.sender]:
        revert with 0, '!trader'
    if cd[164] < block.timestamp:
        revert with 0, 'EXPIRED'
    require ext_code.size(0x58e57ca18b7a47112b877e31929798cd3d703b0f)
    call 0x58e57ca18b7a47112b877e31929798cd3d703b0f.exchange_underlying(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining wei
        args cd[4], cd[36], cd[68], cd[100]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a3778c64(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg5 == address(arg5)
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + arg6.length + 36 <= calldata.size
    if arg7 < block.timestamp:
        revert with 0, '6'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg5) with:
         gas gas_remaining wei
        args arg6[all]
    if not ext_call.success:
        revert with 0, '7'
    require this.address == msg.sender
    if address(arg1) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
        if address(arg1) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
            if address(arg1) != 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                if address(arg1) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        if address(arg1) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                            revert with 0, '5'
    if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
        if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
            if address(arg3) != 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    if address(arg3) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                            revert with 0, '4'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0] + arg2:
        revert with 0, '3'
    if ext_call.return_data[0] < ext_call.return_data[0] + arg4:
        revert with 0, '2'
}



}
