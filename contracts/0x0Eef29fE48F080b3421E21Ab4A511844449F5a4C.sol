contract main {




// =====================  Runtime code  =====================


const NAME = 'Confirmed Transaction Module'

const VERSION = '0.1.0'


address stor0;
address managerAddress;
mapping of uint8 stor2;
mapping of uint8 stor3;

function manager() payable {
    return managerAddress
}

function isExecutor(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function setup() payable {
    if managerAddress:
        revert with 0, 'Manager has already been set'
    managerAddress = msg.sender
}

function getTransactionStatus(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require stor2[arg1] <= 2
    if not stor2[arg1]:
        return 0
    require stor2[arg1] <= 2
    if stor2[arg1] == 1:
        return 1, 0
    require stor2[arg1] <= 2
    require stor2[arg1] == 2
    return 1, 1
}

function setExecutor(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
                    mem[202 len 26]
    if bool(stor3[address(arg1)]) != arg2:
        stor3[address(arg1)] = uint8(arg2)
        emit ExecutorUpdated(arg2, arg1);
}

function confirmTransaction(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
                    mem[202 len 26]
    require stor2[arg1] <= 2
    if stor2[arg1]:
        revert with 0, 'tx already confirmed'
    stor2[arg1] = 1
    emit Confirmed(arg1, msg.sender);
}

function revokeTransaction(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
                    mem[202 len 26]
    require stor2[arg1] <= 2
    if stor2[arg1] != 1:
        revert with 0, 'tx unknown or already executed'
    stor2[arg1] = 0
    emit Revoked(arg1, msg.sender);
}

function changeMasterCopy(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
                    mem[202 len 26]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe496e76616c6964206d617374657220636f707920616464726573732070726f76696465,
                    mem[200 len 28]
    stor0 = arg1
    emit ChangedMasterCopy(arg1);
}

function getTransactionHash(address arg1, uint256 arg2, bytes arg3, uint8 arg4, bytes32 arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 1
    if arg4:
        require arg4 <= 1
        if arg4 != 1:
            revert with 0, 'unknown operation'
    mem[ceil32(arg3.length) + 160] = arg1
    mem[ceil32(arg3.length) + 192] = arg2
    require arg4 <= 1
    mem[ceil32(arg3.length) + 256] = arg4
    mem[ceil32(arg3.length) + 288] = arg5
    mem[ceil32(arg3.length) + 224] = 160
    mem[ceil32(arg3.length) + 320] = arg3.length
    mem[ceil32(arg3.length) + 352 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[ceil32(arg3.length) + 128] = arg3.length + 192
        mem[arg3.length + ceil32(arg3.length) + 352] = sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
        return memory
          from arg3.length + ceil32(arg3.length) + 352
           len 32
    mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
    mem[ceil32(arg3.length) + 128] = floor32(arg3.length) + 224
    mem[floor32(arg3.length) + ceil32(arg3.length) + 384] = sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
    return memory
      from floor32(arg3.length) + ceil32(arg3.length) + 384
       len 32
}

function executeTransaction(address arg1, uint256 arg2, bytes arg3, uint8 arg4, bytes32 arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not stor3[address(msg.sender)]:
        revert with 0, 'only executor can call'
    require arg4 <= 1
    if not arg4:
        mem[ceil32(arg3.length) + 160] = arg1
        mem[ceil32(arg3.length) + 192] = arg2
        require arg4 <= 1
        mem[ceil32(arg3.length) + 256] = arg4
        mem[ceil32(arg3.length) + 288] = arg5
        mem[ceil32(arg3.length) + 224] = 160
        mem[ceil32(arg3.length) + 320] = arg3.length
        mem[ceil32(arg3.length) + 352 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[ceil32(arg3.length) + 128] = arg3.length + 192
        _125 = sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
        require stor2[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]] <= 2
        if stor2[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]] != 1:
            revert with 0, 'tx unknown or already executed'
        stor2[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]] = 2
        require arg4 <= 1
        require ext_code.size(managerAddress)
        call managerAddress.0x468721a7 with:
             gas gas_remaining wei
            args address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4 << 248
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'execution failed'
        emit Executed(_125, msg.sender);
    else:
        require arg4 <= 1
        if arg4 != 1:
            revert with 0, 'unknown operation'
        mem[ceil32(arg3.length) + 160] = arg1
        mem[ceil32(arg3.length) + 192] = arg2
        require arg4 <= 1
        mem[ceil32(arg3.length) + 256] = arg4
        mem[ceil32(arg3.length) + 288] = arg5
        mem[ceil32(arg3.length) + 224] = 160
        mem[ceil32(arg3.length) + 320] = arg3.length
        mem[ceil32(arg3.length) + 352 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[ceil32(arg3.length) + 128] = arg3.length + 192
        _129 = sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
        require stor2[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]] <= 2
        if stor2[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]] != 1:
            revert with 0, 'tx unknown or already executed'
        stor2[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]] = 2
        require arg4 <= 1
        require ext_code.size(managerAddress)
        call managerAddress.0x468721a7 with:
             gas gas_remaining wei
            args address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4 << 248
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'execution failed'
        emit Executed(_129, msg.sender);
}



}
