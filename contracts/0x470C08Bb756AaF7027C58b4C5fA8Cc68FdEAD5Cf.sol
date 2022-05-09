contract main {




// =====================  Runtime code  =====================


#
#  - addDropData(uint256 arg1, uint256 arg2, uint256 arg3, bytes32 arg4, address arg5)
#  - updateDropData(uint256 arg1, uint256 arg2, uint256 arg3, bytes32 arg4, bytes32 arg5, address arg6)
#
uint256 fee;
address feeReceiverAddress;
address timelockAddress;
mapping of address drops;

function drops(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return drops[arg1]
}

function feeReceiver() payable {
    return feeReceiverAddress
}

function timelock() payable {
    return timelockAddress
}

function fee() payable {
    return fee
}

function _fallback() payable {
    revert
}

function updateFeeReceiver(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if timelockAddress != msg.sender:
        revert with 0, 'FACTORY_ONLY_TIMELOCK'
    feeReceiverAddress = arg1
}

function updateFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, 'FACTORY_ONLY_TIMELOCK'
    if arg1 >= 2000:
        revert with 0, 'FACTORY_MAX_FEE_EXCEED'
    fee = arg1
}

function pause(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(drops[address(arg1)])
    call drops[address(arg1)].0x98097581 with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DropPaused(arg2);
}

function unpause(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(drops[address(arg1)])
    call drops[address(arg1)].0x932ced7b with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DropUnpaused(arg2);
}

function withdraw(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not drops[address(arg1)]:
        revert with 0, 'FACTORY_DROP_DOES_NOT_EXIST'
    require ext_code.size(drops[address(arg1)])
    call drops[address(arg1)].0x40e5e9aa with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit DropWithdrawn(ext_call.return_data[0], arg1, msg.sender, arg2);
}

function isDropClaimed(address arg1, uint256 arg2, bytes32 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not drops[address(arg1)]:
        revert with 0, 'FACTORY_DROP_DOES_NOT_EXIST'
    require ext_code.size(drops[address(arg1)])
    staticcall drops[address(arg1)].isClaimed(uint256 arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function getDropDetails(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(drops[address(arg1)])
    staticcall drops[address(arg1)].0x146aa1c2 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[96] == ext_call.return_data[108 len 20]
    require ext_call.return_data[128] == bool(ext_call.return_data[128])
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           address(ext_call.return_data[96]),
           bool(ext_call.return_data[128])
}

function createDrop(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if drops[address(arg1)]:
        revert with 0, 'FACTORY_DROP_EXISTS'
    if eth.balance(this.address) < 0:
        revert with 0, 'Create2: insufficient balance'
    create2 contract with 0 wei
                    salt: sha3(arg1)
                    code: code.data[6014 len 4901]
    if not address(create2.new_address):
        revert with 0, 'Create2: Failed on deploy'
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0xc4d66de8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    drops[address(arg1)] = address(create2.new_address)
    emit DropCreated(address(create2.new_address), arg1);
}

function claimFromDrop(address arg1, uint256 arg2, uint256 arg3, bytes32 arg4, bytes32[] arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    if not drops[address(arg1)]:
        revert with 0, 'FACTORY_DROP_DOES_NOT_EXIST'
    require arg5.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(drops[address(arg1)])
    call drops[address(arg1)].0x5cc4e56 with:
         gas gas_remaining wei
        args 0, uint32(arg2), msg.sender, arg3, fee, feeReceiverAddress, arg4, 224, arg5.length, call.data[arg5 + 36 len 32 * arg5.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DropClaimed(arg2, arg3, arg1, msg.sender, arg4);
}

function multipleClaimsFromDrop(address arg1, uint256[] arg2, uint256[] arg3, bytes32[] arg4, bytes32[][] arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    if not drops[address(arg1)]:
        revert with 0, 'FACTORY_DROP_DOES_NOT_EXIST'
    idx = 0
    while idx < arg2.length:
        mem[0] = arg1
        mem[32] = 3
        if idx >= arg3.length:
            revert with 0, 50
        if idx >= arg4.length:
            revert with 0, 50
        if idx >= arg5.length:
            revert with 0, 50
        require cd[(arg5 + (32 * idx) + 36)] < calldata.size + -arg5 - 67
        require cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)])
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
        mem[mem[64] + 100] = fee
        mem[mem[64] + 132] = feeReceiverAddress
        mem[mem[64] + 164] = cd[((32 * idx) + arg4 + 36)]
        mem[mem[64] + 196] = 224
        mem[mem[64] + 228] = cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]
        require cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)] <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[mem[64] + 260 len 32 * cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 len 32 * cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]]
        mem[mem[64] + (32 * cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]) + 260] = 0
        require ext_code.size(drops[address(arg1)])
        call drops[address(arg1)].0x5cc4e56 with:
             gas gas_remaining wei
            args cd[((32 * idx) + arg2 + 36)], msg.sender, cd[((32 * idx) + arg3 + 36)], fee, feeReceiverAddress, cd[((32 * idx) + arg4 + 36)], Array(len=cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)], data=call.data[arg5 + cd[(arg5 + (32 * idx) + 36)] + 68 len 32 * cd[(arg5 + cd[(arg5 + (32 * idx) + 36)] + 36)]])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= arg4.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        if idx >= arg3.length:
            revert with 0, 50
        mem[mem[64]] = cd[((32 * idx) + arg2 + 36)]
        mem[mem[64] + 32] = cd[((32 * idx) + arg3 + 36)]
        emit DropClaimed(cd[((32 * idx) + arg2 + 36)], cd[((32 * idx) + arg3 + 36)], arg1, msg.sender, cd[((32 * idx) + arg4 + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
