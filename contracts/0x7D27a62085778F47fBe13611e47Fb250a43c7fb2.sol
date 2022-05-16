contract main {




// =====================  Runtime code  =====================


const sub_006a6ef7(?) = 0x1d83fe6a10d2f2b7af17034343746188272cac9

const sub_b11173fc(?) = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c


function _fallback() payable {
    revert
}

function sub_826c16f1(?) payable {
    require calldata.size - 4 >= 128
}

function sub_c754d352(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3774f85c(?) payable {
    require calldata.size - 4 >= 192
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x29416176655374616b696e67506f6f6c56322e77697468647261773a206d73672e73656e646572206d7573742062652073747261746567,
                    mem[219 len 9]
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0xfe416176655374616b696e67506f6f6c56322e77697468647261773a206d73672e73656e646572206d75737420626520616464726573732874686973,
                    mem[224 len 4]
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(arg1), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function emergencyWithdraw(address arg1, address arg2, address arg3, address arg4, bool arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    if arg4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x29416176655374616b696e67506f6f6c56322e656d657267656e637957697468647261773a206d73672e73656e646572206d7573742062652073747261746567
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x64416176655374616b696e67506f6f6c56322e656d657267656e637957697468647261773a206d73672e73656e646572206d75737420626520616464726573732874686973,
                    mem[233 len 27]
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(arg1), -1, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_36cebf69(?) payable {
    require calldata.size - 4 >= 96
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    62,
                    0x79416176655374616b696e67506f6f6c56322e636c61696d496e63656e74697665733a206d73672e73656e646572206d7573742062652073747261746567,
                    mem[226 len 2]
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x79416176655374616b696e67506f6f6c56322e636c61696d496e63656e74697665733a206d73672e73656e646572206d75737420626520616464726573732874686973,
                    mem[231 len 29]
    mem[260 len 0] = None
    require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
    staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] arg1, address arg2) with:
            gas gas_remaining wei
           args Array(len=1, data=mem[260]), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[292 len 0] = None
    require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
    call 0x01d83fe6a10d2f2b7af17034343746188272cac9.claimRewards(address[] arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args 96, ext_call.return_data[0], arg3, 0, 1, mem[292]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x342216b6: address(arg1), ext_call.return_data[0], arg3
}

function deposit(address arg1, address arg2, address arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if arg4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x29416176655374616b696e67506f6f6c56322e6465706f7369743a206d73672e73656e646572206d7573742062652073747261746567,
                    mem[218 len 10]
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x79416176655374616b696e67506f6f6c56322e6465706f7369743a206d73672e73656e646572206d75737420626520616464726573732874686973,
                    mem[223 len 5]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x79416176655374616b696e67506f6f6c56322e6465706f736974202d20617070726f7665206661696c65,
                    mem[206 len 22]
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args 0, 0, arg5, address(arg4), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
