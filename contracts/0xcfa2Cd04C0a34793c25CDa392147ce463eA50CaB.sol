contract main {




// =====================  Runtime code  =====================


const ETH_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


uint256 stor0;
address owner;
mapping of uint256 available;

function owner() {
    return owner
}

function available(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return available[arg1][arg2]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_bd85cef6(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (64 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    idx = 0
    s = 0
    while idx < ('cd', 68).length:
        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
        if cd[((64 * idx) + cd[68] + 68)] + available[address(cd[36])][address(cd[((64 * idx) + cd[68] + 36)])] < available[address(cd[36])][address(cd[((64 * idx) + cd[68] + 36)])]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < ('cd', 68).length
        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
        mem[0] = address(cd[((64 * idx) + cd[68] + 36)])
        mem[32] = sha3(address(cd[36]), 2)
        available[address(cd[36])][address(cd[((64 * idx) + cd[68] + 36)])] += cd[((64 * idx) + cd[68] + 68)]
        require idx < ('cd', 68).length
        if cd[((64 * idx) + cd[68] + 68)] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = cd[((64 * idx) + cd[68] + 68)] + s
        continue 
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[36]):
        if cd[((64 * ('cd', 68).length) + cd[68] + 68)] * ('cd', 68).length != msg.value:
            revert with 0, 'ETH_AMOUNT_MISMATCH'
    else:
        require ext_code.size(address(cd[36]))
        call address(cd[36]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((64 * ('cd', 68).length) + cd[68] + 68)] * ('cd', 68).length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit DistributeReward(address(cd[36]), cd[((64 * ('cd', 68).length) + cd[68] + 68)] * ('cd', 68).length, cd[4]);
}

function sub_e003d24c(?) {
    require calldata.size - 4 >= 96
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (64 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    idx = 0
    s = 0
    while idx < ('cd', 68).length:
        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
        if cd[((64 * idx) + cd[68] + 68)] > available[address(cd[36])][address(cd[((64 * idx) + cd[68] + 36)])]:
            revert with 0, 'SafeMath: subtraction overflow'
        require idx < ('cd', 68).length
        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
        mem[0] = address(cd[((64 * idx) + cd[68] + 36)])
        mem[32] = sha3(address(cd[36]), 2)
        available[address(cd[36])][address(cd[((64 * idx) + cd[68] + 36)])] -= cd[((64 * idx) + cd[68] + 68)]
        require idx < ('cd', 68).length
        if cd[((64 * idx) + cd[68] + 68)] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = cd[((64 * idx) + cd[68] + 68)] + s
        continue 
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[36]):
        if eth.balance(this.address) < cd[((64 * ('cd', 68).length) + cd[68] + 68)] * ('cd', 68).length:
            revert with 0, 'Address: insufficient balance'
        call msg.sender with:
           value cd[((64 * ('cd', 68).length) + cd[68] + 68)] * ('cd', 68).length wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            58,
                            0x73416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                            mem[222 len 6]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            58,
                            0x73416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                            mem[ceil32(return_data.size) + 223 len 6]
        ('bool', 'ext_call.success')
    else:
        require ext_code.size(address(cd[36]))
        call address(cd[36]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[((64 * ('cd', 68).length) + cd[68] + 68)] * ('cd', 68).length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit UndistributeReward(address(cd[36]), cd[((64 * ('cd', 68).length) + cd[68] + 68)] * ('cd', 68).length, cd[4]);
}

function sub_f874d8f6(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ('cd', 4).length <= test266151307()
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = address(cd[36])
            mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 2)
            require idx < mem[96]
            mem[(32 * idx) + 128] = available[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])]
            require idx < mem[96]
            if available[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])] != 0:
                require idx < ('cd', 4).length
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[0] = address(cd[36])
                mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 2)
                available[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])] = 0
                require idx < ('cd', 4).length
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require idx < mem[96]
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx) + cd[4] + 36)]):
                    if eth.balance(this.address) < available[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])]:
                        revert with 0, 'Address: insufficient balance'
                    call address(cd[36]) with:
                       value available[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])] wei
                         gas gas_remaining wei
                    if return_data.size:
                        _114 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_114] = return_data.size
                        mem[_114 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    58,
                                    0x73416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                    mem[mem[64] + 126 len 6]
                else:
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = available[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), available[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _116 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_116] == bool(mem[_116])
                require idx < ('cd', 4).length
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require idx < mem[96]
                mem[mem[64]] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 32] = available[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])]
                emit RedeemReward(address(cd[((32 * idx) + cd[4] + 36)]), available[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])], msg.sender);
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = address(cd[36])
            mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 2)
            require idx < mem[96]
            mem[(32 * idx) + 128] = available[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])]
            require idx < mem[96]
            if available[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])] != 0:
                require idx < ('cd', 4).length
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[0] = address(cd[36])
                mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 2)
                available[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])] = 0
                require idx < ('cd', 4).length
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require idx < mem[96]
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * idx) + cd[4] + 36)]):
                    if eth.balance(this.address) < available[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])]:
                        revert with 0, 'Address: insufficient balance'
                    call address(cd[36]) with:
                       value available[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])] wei
                         gas gas_remaining wei
                    if return_data.size:
                        _115 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_115] = return_data.size
                        mem[_115 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    58,
                                    0x73416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                    mem[mem[64] + 126 len 6]
                else:
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = available[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), available[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _117 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_117] == bool(mem[_117])
                require idx < ('cd', 4).length
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require idx < mem[96]
                mem[mem[64]] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 32] = available[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])]
                emit RedeemReward(address(cd[((32 * idx) + cd[4] + 36)]), available[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])], msg.sender);
            idx = idx + 1
            continue 
    stor0 = 1
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
