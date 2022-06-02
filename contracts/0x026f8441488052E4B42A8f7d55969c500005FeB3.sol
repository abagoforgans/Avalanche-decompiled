contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_d0cd7563(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    mem[192] = 2
    mem[224] = address(arg3)
    mem[256] = address(arg2)
    if 60 > !block.timestamp:
        revert with 0, 17
    idx = 0
    s = 516
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[288] = 260
    mem[580 len 288] = 0, 10^18, 10^13, 160, msg.sender, block.timestamp + 60, 2, mem[516 len 92]
    mem[840] = 0
    delegate address(arg1).mem[580 len 4] with:
         gas gas_remaining wei
        args mem[584 len 256]
    if not return_data.size:
        if not delegate.return_code:
            revert with uint16(arg2)
        if 60 > !block.timestamp:
            revert with 0, 17
        idx = 0
        s = 808
        t = 224
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[872 len 288] = 0, 10^18, 10^13, 160, msg.sender, block.timestamp + 60, 2, mem[808 len 92]
        delegate address(arg1).mem[872 len 4] with:
             gas gas_remaining wei
            args mem[876 len 256]
        if not return_data.size:
            if not delegate.return_code:
                revert with uint16(arg2)
            return 1
        if delegate.return_code:
            return 1
    else:
        if delegate.return_code:
            if 60 > !block.timestamp:
                revert with 0, 17
            idx = 0
            s = ceil32(return_data.size) + 809
            t = 224
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 873 len 288] = 0, 10^18, 10^13, 160, msg.sender, block.timestamp + 60, 2, mem[ceil32(return_data.size) + 809 len 92]
            delegate address(arg1).mem[ceil32(return_data.size) + 873 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 877 len 256]
            if not return_data.size:
                if not delegate.return_code:
                    revert with uint16(arg2)
                return 1
            if delegate.return_code:
                return 1
    require return_data.size
    revert with ext_call.return_data[0 len return_data.size]
}



}
