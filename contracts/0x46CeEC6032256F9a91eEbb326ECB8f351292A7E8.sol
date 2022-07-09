contract main {




// =====================  Runtime code  =====================


const pre = 0x654d4e0a024e2bbf8ef09fa89379fdeac9dcad40

const preSaleToken = 0x99dfc401f759aa9ddd678d0da00d062608849665

const saleToken = 0xbe3e1f44d99edb10cf6378e5a3879bb533a67331

const DAI = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70


address owner;
uint256 sub_8eb2c7f2;
address swapRouterAddress;
uint256 preStartTime;

function preStartTime() payable {
    return preStartTime
}

function owner() payable {
    return owner
}

function sub_8eb2c7f2(?) payable {
    return sub_8eb2c7f2
}

function swapRouter() payable {
    return swapRouterAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function rescueTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function dump(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if not sub_8eb2c7f2:
        if arg1 and 1 > -1 / arg1:
            revert with 'NH{q', 17
        mem[128] = 0xbe3e1f44d99edb10cf6378e5a3879bb533a67331
        mem[160] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
        require ext_code.size(0x99dfc401f759aa9ddd678d0da00d062608849665)
        staticcall 0x99dfc401f759aa9ddd678d0da00d062608849665.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0x654d4e0a024e2bbf8ef09fa89379fdeac9dcad40)
        call 0x654d4e0a024e2bbf8ef09fa89379fdeac9dcad40.0xbbad854b with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xbe3e1f44d99edb10cf6378e5a3879bb533a67331)
        staticcall 0xbe3e1f44d99edb10cf6378e5a3879bb533a67331.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        idx = 0
        s = 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(swapRouterAddress)
        call swapRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], arg1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), msg.sender, block.timestamp + 60
    else:
        if bool(bool(sub_8eb2c7f2 < 78)) or bool(bool(sub_8eb2c7f2 < 32)):
            if 10^sub_8eb2c7f2 > -1:
                revert with 'NH{q', 17
            if arg1 and 10^sub_8eb2c7f2 > -1 / arg1:
                revert with 'NH{q', 17
            mem[128] = 0xbe3e1f44d99edb10cf6378e5a3879bb533a67331
            mem[160] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
            require ext_code.size(0x99dfc401f759aa9ddd678d0da00d062608849665)
            staticcall 0x99dfc401f759aa9ddd678d0da00d062608849665.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(0x654d4e0a024e2bbf8ef09fa89379fdeac9dcad40)
            call 0x654d4e0a024e2bbf8ef09fa89379fdeac9dcad40.0xbbad854b with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xbe3e1f44d99edb10cf6378e5a3879bb533a67331)
            staticcall 0xbe3e1f44d99edb10cf6378e5a3879bb533a67331.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            idx = 0
            s = 128
            t = (2 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(swapRouterAddress)
            call swapRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg1 * 10^sub_8eb2c7f2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), msg.sender, block.timestamp + 60
        else:
            s = 10
            t = 1
            idx = sub_8eb2c7f2
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg1 and t * s > -1 / arg1:
                revert with 'NH{q', 17
            mem[128] = 0xbe3e1f44d99edb10cf6378e5a3879bb533a67331
            mem[160] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
            require ext_code.size(0x99dfc401f759aa9ddd678d0da00d062608849665)
            staticcall 0x99dfc401f759aa9ddd678d0da00d062608849665.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(0x654d4e0a024e2bbf8ef09fa89379fdeac9dcad40)
            call 0x654d4e0a024e2bbf8ef09fa89379fdeac9dcad40.0xbbad854b with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xbe3e1f44d99edb10cf6378e5a3879bb533a67331)
            staticcall 0xbe3e1f44d99edb10cf6378e5a3879bb533a67331.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            idx = 0
            u = 128
            v = (2 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[v] = mem[u + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(swapRouterAddress)
            call swapRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg1 * t * s, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), msg.sender, block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
