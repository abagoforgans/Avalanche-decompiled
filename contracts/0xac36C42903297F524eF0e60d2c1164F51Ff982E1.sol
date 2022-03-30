contract main {




// =====================  Runtime code  =====================


array of struct stor0;
uint256 sub_5e370784;
uint256 vaultAmount;
mapping of uint256 pendingWithdrawAmount;
uint256 sub_9656b7d8;
address stor5;
address stor6;
address stor7;
uint8 stor8; offset 160
uint128 stor8; offset 160
address stor8;

function sub_5e370784(?) {
    return sub_5e370784
}

function sub_9656b7d8(?) {
    return sub_9656b7d8
}

function getPendingWithdrawAmount(address arg1) {
    require calldata.size - 4 >= 32
    return pendingWithdrawAmount[address(arg1)]
}

function getVaultAmount() {
    return vaultAmount
}

function sub_ba598f1b(?) payable {
    require msg.sender == stor5
    if stor0.length > 0:
        require stor0.length
        require sha3(block.difficulty, block.timestamp, stor0.length) % stor0.length < stor0.length
        call stor0[sha3(block.difficulty, block.timestamp, stor0.length) % stor0.length].field_0 with:
           value sub_5e370784 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_5e370784 = 0
    selfdestruct(stor5)
}

function _fallback() payable {
    revert
}

function sub_af01d99e(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor5
    stor7 = arg1
    return 0
}

function setVaultManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor5
    stor6 = arg1
    return 0
}

function sub_5596eb52(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor5
    address(stor8.field_0) = arg1
    return 0
}

function sub_9acdb641(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor5
    Mask(96, 0, stor8.field_160) = Mask(96, 0, arg1)
    return 0
}

function vaultWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor5
    require arg1 <= vaultAmount
    call stor6 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    vaultAmount -= arg1
    return 1
}

function withdraw() payable {
    require 0 < pendingWithdrawAmount[address(msg.sender)]
    pendingWithdrawAmount[address(msg.sender)] = 0
    call msg.sender with:
       value pendingWithdrawAmount[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function triggerRunChecks() payable {
    require msg.sender == stor7
    if sub_5e370784 >= 20 * 10^18:
        require ext_code.size(address(stor8.field_0))
        call address(stor8.field_0).0x640a0759 with:
             gas gas_remaining wei
            args 0, stor0.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    else:
        return 0
}

function randomValueCreated(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor8.field_0)
    if not arg2:
        require arg1 < stor0.length
        pendingWithdrawAmount[stor0[arg1].field_0] += 199 * 10^17
        emit 0xa4b93897: 199 * 10^17, stor0[arg1].field_0, sub_9656b7d8, 0
        vaultAmount += 10^17
        sub_5e370784 = 0
        stor0.length = 0
        idx = 0
        while stor0.length > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
        sub_9656b7d8++
        return 0
    else:
        return 0
}

function buyTicket() payable {
    require msg.value == 10 * 10^18
    require stor0.length < 2
    sub_5e370784 += msg.value
    stor0.length++
    stor0[stor0.length].field_0 = msg.sender
    emit TicketPurchased(sub_9656b7d8, msg.sender);
    emit 0xa534fac9: msg.sender, sub_9656b7d8
    if uint8(stor8.field_160):
        if sub_5e370784 >= 20 * 10^18:
            require ext_code.size(address(stor8.field_0))
            call address(stor8.field_0).0x640a0759 with:
                 gas gas_remaining wei
                args 0, stor0.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_adac8e77(?) {
    if not stor0.length:
        mem[(32 * stor0.length) + 128] = 32
        mem[(32 * stor0.length) + 160] = stor0.length
        mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
        return memory
          from (32 * stor0.length) + 128
           len (96 * stor0.length) + 64
    mem[128] = address(stor0.field_0)
    idx = 128
    s = 0
    while (32 * stor0.length) + 96 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
    return Array(len=stor0.length, data=mem[128 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 192 len (32 * stor0.length) - floor32(stor0.length)]), 
}



}
