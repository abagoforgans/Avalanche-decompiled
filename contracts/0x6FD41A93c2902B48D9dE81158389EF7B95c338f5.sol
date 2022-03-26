contract main {




// =====================  Runtime code  =====================


const sub_0bb6f0ef(?) = 300

const sub_137a37e2(?) = 120

const sub_a5267786(?) = 60


address managerAddress;
address feeCollectorAddress;
mapping of address sub_a75c7452;
mapping of uint256 sub_fcb2749a;
mapping of uint256 sub_f0114c36;
mapping of address sub_ae2c5fab;
mapping of uint256 sub_e2728642;
mapping of uint256 sub_b7666f3e;
mapping of uint256 sub_5f3a0854;

function manager() payable {
    return managerAddress
}

function sub_5f3a0854(?) payable {
    require calldata.size - 4 >= 64
    return sub_5f3a0854[arg1][arg2]
}

function sub_a75c7452(?) payable {
    require calldata.size - 4 >= 32
    return sub_a75c7452[arg1]
}

function sub_ae2c5fab(?) payable {
    require calldata.size - 4 >= 32
    return sub_ae2c5fab[arg1]
}

function sub_b7666f3e(?) payable {
    require calldata.size - 4 >= 32
    return sub_b7666f3e[arg1]
}

function feeCollector() payable {
    return feeCollectorAddress
}

function sub_e2728642(?) payable {
    require calldata.size - 4 >= 32
    return sub_e2728642[arg1]
}

function sub_f0114c36(?) payable {
    require calldata.size - 4 >= 32
    return sub_f0114c36[arg1]
}

function sub_fcb2749a(?) payable {
    require calldata.size - 4 >= 32
    return sub_fcb2749a[arg1]
}

function _fallback() payable {
    revert
}

function sub_6996d29a(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == managerAddress
    sub_5f3a0854[address(arg1)][5] = block.timestamp + 60
    sub_f0114c36[address(arg1)] = arg2
    emit 0x26091dbf: arg2, sub_5f3a0854[address(arg1)][5], arg1
}

function sub_84f2c83f(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == managerAddress
    sub_5f3a0854[address(arg1)][4] = block.timestamp + 60
    sub_fcb2749a[address(arg1)] = arg2
    emit 0x9d1dc457: arg2, sub_5f3a0854[address(arg1)][4], arg1
}

function sub_9017e465(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == managerAddress
    sub_5f3a0854[address(arg1)][1] = block.timestamp + 300
    sub_a75c7452[address(arg1)] = arg2
    emit 0xef95e1c7: sub_5f3a0854[address(arg1)][1], arg1, arg2
}

function sub_91609e81(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == managerAddress
    sub_5f3a0854[address(arg1)][7] = block.timestamp + 120
    sub_b7666f3e[address(arg1)] = arg2
    emit 0xf27444df: arg2, sub_5f3a0854[address(arg1)][7], arg1, 0
}

function sub_3242a566(?) payable {
    require calldata.size - 4 >= 96
    require msg.sender == managerAddress
    sub_5f3a0854[address(arg1)][6] = block.timestamp + 120
    sub_ae2c5fab[address(arg1)] = arg2
    sub_e2728642[address(arg1)] = arg3
    emit 0xf27444df: arg3, sub_5f3a0854[address(arg1)][6], arg1, arg2
}

function emergencyWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
    require ext_code.size(arg1)
    call arg1.0xdb2e21bc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EmergencyWithdraw(arg1);
}

function sub_0fba7d62(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == managerAddress
    require ext_code.size(arg1)
    call arg1.updateMinTokensToReinvest(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x33e6c9b1: arg2, arg1
}

function sweepAVAX(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == feeCollectorAddress
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6459616b54696d656c6f636b4d616e616765723a3a7377656570415641582c20616d6f756e7420746f6f206c6f,
                    mem[209 len 19]
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Sweep(address rg1, uint256 rg2):
               arg1,
    emit 0x0: arg1
}

function sweepTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == feeCollectorAddress
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6b59616b54696d656c6f636b4d616e616765723a3a7377656570546f6b656e732c20616d6f756e7420746f6f206c6f,
                    mem[211 len 17]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x7759616b54696d656c6f636b4d616e616765723a3a7377656570546f6b656e732c207472616e73666572206661696c65,
                    mem[212 len 16]
    emit Sweep(arg2, arg1);
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_5f3a0854[address(arg1)][1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b54696d656c6f636b4d616e616765723a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    if sub_5f3a0854[address(arg1)][1] > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b54696d656c6f636b4d616e616765723a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    require ext_code.size(arg1)
    call arg1.0xf2fde38b with:
         gas gas_remaining wei
        args sub_a75c7452[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit SetOwner(arg1, sub_a75c7452[address(arg1)]);
    sub_a75c7452[address(arg1)] = 0
    sub_5f3a0854[address(arg1)][1] = 0
}

function sub_27399d55(?) payable {
    require calldata.size - 4 >= 32
    if not sub_5f3a0854[address(arg1)][7]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b54696d656c6f636b4d616e616765723a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    if sub_5f3a0854[address(arg1)][7] > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b54696d656c6f636b4d616e616765723a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    require ext_code.size(arg1)
    call arg1.recoverAVAX(uint256 rg1) with:
         gas gas_remaining wei
        args sub_b7666f3e[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xf6891c84: sub_b7666f3e[address(arg1)], arg1, 0
    sub_b7666f3e[address(arg1)] = 0
    sub_5f3a0854[address(arg1)][7] = 0
}

function sub_7042bcf8(?) payable {
    require calldata.size - 4 >= 32
    if not sub_5f3a0854[address(arg1)][4]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b54696d656c6f636b4d616e616765723a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    if sub_5f3a0854[address(arg1)][4] > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b54696d656c6f636b4d616e616765723a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    require ext_code.size(arg1)
    call arg1.updateAdminFee(uint256 rg1) with:
         gas gas_remaining wei
        args sub_fcb2749a[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7f8a351e: sub_fcb2749a[address(arg1)], arg1
    sub_fcb2749a[address(arg1)] = 0
    sub_5f3a0854[address(arg1)][4] = 0
}

function sub_bfe3c7de(?) payable {
    require calldata.size - 4 >= 32
    if not sub_5f3a0854[address(arg1)][5]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b54696d656c6f636b4d616e616765723a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    if sub_5f3a0854[address(arg1)][5] > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b54696d656c6f636b4d616e616765723a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    require ext_code.size(arg1)
    call arg1.updateReinvestReward(uint256 rg1) with:
         gas gas_remaining wei
        args sub_f0114c36[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x13a14ce9: sub_f0114c36[address(arg1)], arg1
    sub_f0114c36[address(arg1)] = 0
    sub_5f3a0854[address(arg1)][5] = 0
}

function sub_0135002c(?) payable {
    require calldata.size - 4 >= 32
    if not sub_5f3a0854[address(arg1)][6]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b54696d656c6f636b4d616e616765723a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    if sub_5f3a0854[address(arg1)][6] > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe59616b54696d656c6f636b4d616e616765723a3a656e666f72636554696d656c6f63,
                    mem[199 len 29]
    require ext_code.size(arg1)
    call arg1.recoverERC20(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_ae2c5fab[address(arg1)], sub_e2728642[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xf6891c84: sub_e2728642[address(arg1)], arg1, sub_ae2c5fab[address(arg1)]
    sub_ae2c5fab[address(arg1)] = 0
    sub_e2728642[address(arg1)] = 0
    sub_5f3a0854[address(arg1)][6] = 0
}



}
