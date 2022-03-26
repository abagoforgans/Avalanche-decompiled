contract main {




// =====================  Runtime code  =====================


const sub_0bb6f0ef(?) = 900

const sub_137a37e2(?) = 600

const sub_a5267786(?) = 300


address managerAddress;
address feeCollectorAddress;
address strategyAddress;
address pendingOwner;
uint256 sub_596b7962;
uint256 sub_9b1dcd91;
address sub_8211335fAddress;
uint256 sub_de281880;
uint256 sub_5d4a8f81;
mapping of uint256 timelock;

function manager() payable {
    return managerAddress
}

function sub_596b7962(?) payable {
    return sub_596b7962
}

function sub_5d4a8f81(?) payable {
    return sub_5d4a8f81
}

function sub_8211335f(?) payable {
    return sub_8211335fAddress
}

function sub_9b1dcd91(?) payable {
    return sub_9b1dcd91
}

function strategy() payable {
    return strategyAddress
}

function timelock(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    return timelock[arg1]
}

function feeCollector() payable {
    return feeCollectorAddress
}

function sub_de281880(?) payable {
    return sub_de281880
}

function pendingOwner() payable {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function sub_3853b4b6(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
    timelock[5] = block.timestamp + 300
    sub_9b1dcd91 = arg1
    emit 0x3099712e: arg1, timelock[5]
}

function sub_5a15067a(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
    timelock[4] = block.timestamp + 300
    sub_596b7962 = arg1
    emit 0x9f8db745: arg1, timelock[4]
}

function proposeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
    timelock[1] = block.timestamp + 900
    pendingOwner = arg1
    emit 0xf5bdc4cb: timelock[1], arg1
}

function sub_a62e70c3(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
    timelock[7] = block.timestamp + 600
    sub_5d4a8f81 = arg1
    emit 0x85884bb9: arg1, timelock[7]
    emit 0x0: arg1, timelock[7]
}

function sub_7bfd77a8(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == managerAddress
    timelock[6] = block.timestamp + 600
    sub_8211335fAddress = arg1
    sub_de281880 = arg2
    emit 0x85884bb9: arg2, timelock[6], arg1
}

function emergencyWithdraw() payable {
    require msg.sender == managerAddress
    require ext_code.size(strategyAddress)
    call strategyAddress.0xdb2e21bc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EmergencyWithdraw()
}

function sub_c4c09d50(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
    require ext_code.size(strategyAddress)
    call strategyAddress.updateMinTokensToReinvest(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x41a13409: arg1
}

function sweepAVAX(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == feeCollectorAddress
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6459616b54696d656c6f636b4d616e6167657256313a3a7377656570415641582c20616d6f756e7420746f6f206c6f,
                    mem[211 len 17]
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Sweep(address rg1, uint256 rg2):
               arg1,
    emit 0x0: arg1
}

function setOwner() payable {
    if not timelock[1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7759616b54696d656c6f636b4d616e6167657256313a3a656e666f72636554696d656c6f63,
                    mem[201 len 27]
    if timelock[1] > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7759616b54696d656c6f636b4d616e6167657256313a3a656e666f72636554696d656c6f63,
                    mem[201 len 27]
    require ext_code.size(strategyAddress)
    call strategyAddress.0xf2fde38b with:
         gas gas_remaining wei
        args pendingOwner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit SetOwner(pendingOwner);
    pendingOwner = 0
    timelock[1] = 0
}

function sub_cc29a65f(?) payable {
    if not timelock[4]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7759616b54696d656c6f636b4d616e6167657256313a3a656e666f72636554696d656c6f63,
                    mem[201 len 27]
    if timelock[4] > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7759616b54696d656c6f636b4d616e6167657256313a3a656e666f72636554696d656c6f63,
                    mem[201 len 27]
    require ext_code.size(strategyAddress)
    call strategyAddress.updateAdminFee(uint256 rg1) with:
         gas gas_remaining wei
        args sub_596b7962
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit SetAdminFee(sub_596b7962);
    sub_596b7962 = 0
    timelock[4] = 0
}

function sub_28d3fd37(?) payable {
    if not timelock[5]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7759616b54696d656c6f636b4d616e6167657256313a3a656e666f72636554696d656c6f63,
                    mem[201 len 27]
    if timelock[5] > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7759616b54696d656c6f636b4d616e6167657256313a3a656e666f72636554696d656c6f63,
                    mem[201 len 27]
    require ext_code.size(strategyAddress)
    call strategyAddress.updateReinvestReward(uint256 rg1) with:
         gas gas_remaining wei
        args sub_9b1dcd91
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1ed1f179: sub_9b1dcd91
    sub_9b1dcd91 = 0
    timelock[5] = 0
}

function sub_023535d8(?) payable {
    if not timelock[7]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7759616b54696d656c6f636b4d616e6167657256313a3a656e666f72636554696d656c6f63,
                    mem[201 len 27]
    if timelock[7] > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7759616b54696d656c6f636b4d616e6167657256313a3a656e666f72636554696d656c6f63,
                    mem[201 len 27]
    require ext_code.size(strategyAddress)
    call strategyAddress.recoverAVAX(uint256 rg1) with:
         gas gas_remaining wei
        args sub_5d4a8f81
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Recover(address rg1, uint256 rg2):
                 sub_5d4a8f81,
    emit 0x0: sub_5d4a8f81
    sub_5d4a8f81 = 0
    timelock[7] = 0
}

function sub_3ee2b5e0(?) payable {
    if not timelock[6]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7759616b54696d656c6f636b4d616e6167657256313a3a656e666f72636554696d656c6f63,
                    mem[201 len 27]
    if timelock[6] > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7759616b54696d656c6f636b4d616e6167657256313a3a656e666f72636554696d656c6f63,
                    mem[201 len 27]
    require ext_code.size(strategyAddress)
    call strategyAddress.recoverERC20(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_8211335fAddress, sub_de281880
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Recover(sub_de281880, sub_8211335fAddress);
    sub_8211335fAddress = 0
    sub_de281880 = 0
    timelock[6] = 0
}

function sweepTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == feeCollectorAddress
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x6b59616b54696d656c6f636b4d616e6167657256313a3a7377656570546f6b656e732c20616d6f756e7420746f6f206c6f,
                    mem[213 len 15]
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
                    50,
                    0xfe59616b54696d656c6f636b4d616e6167657256313a3a7377656570546f6b656e732c207472616e73666572206661696c65,
                    mem[214 len 14]
    emit Sweep(arg2, arg1);
}



}
