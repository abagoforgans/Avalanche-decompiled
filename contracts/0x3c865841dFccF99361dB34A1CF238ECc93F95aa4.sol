contract main {




// =====================  Runtime code  =====================


const deadAddress = 57005


uint32 stor0;
address owner;
uint256 stor0;
address sub_ccb373deAddress;
uint256 sub_60a81002;
mapping of uint8 stor4;

function sub_60a81002(?) payable {
    return sub_60a81002
}

function owner() payable {
    return address(owner)
}

function sub_ccb373de(?) payable {
    return sub_ccb373deAddress
}

function whitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function _fallback() payable {
    revert
}

function setMaxAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Requires owner'
    sub_60a81002 = arg1
}

function addWhitelisted(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if address(owner) != msg.sender:
        revert with 0, 'Requires owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function recoverERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Requires owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    emit 0xaca8fb25: arg1, address(owner), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = address(owner)
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_616acfdf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if arg2 and 2 > -1 / arg2:
        revert with 'NH{q', 17
    if sub_60a81002 < arg2:
        revert with 0, 'Exceeds maxAmount'
    if not stor4[address(msg.sender)]:
        revert with 0, 'You are not WhiteListed'
    mem[100] = msg.sender
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] >= arg2
    emit 0x45fdc265: address(arg1), msg.sender, arg2
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = arg2
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(arg1)) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
    mem[ceil32(return_data.size) + 392] = 0
    call address(arg1) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 296] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= 2 * arg2:
            mem[(2 * ceil32(return_data.size)) + 328] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 360] = 2 * arg2
            mem[(2 * ceil32(return_data.size)) + 292] = 68
            mem[(2 * ceil32(return_data.size)) + 324 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 392] = 32
            mem[(2 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(arg1)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 456 len 96] = 0, msg.sender, 2 * arg2, 0
            mem[(2 * ceil32(return_data.size)) + 524] = 0
            call address(arg1) with:
               funct Mask(32, 224, 0, msg.sender, 2 * arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, 2 * arg2, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 488] == bool(mem[(2 * ceil32(return_data.size)) + 488])
                    if not mem[(2 * ceil32(return_data.size)) + 488]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 296] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 328] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 360] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 292] = 68
            mem[(4 * ceil32(return_data.size)) + 324 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 392] = 32
            mem[(4 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(arg1)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 456 len 96] = 0, msg.sender, ext_call.return_data[0], 0
            mem[(4 * ceil32(return_data.size)) + 524] = 0
            call address(arg1) with:
               funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 488] == bool(mem[(4 * ceil32(return_data.size)) + 488])
                    if not mem[(4 * ceil32(return_data.size)) + 488]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        stor4[address(msg.sender)] = 0
    mem[ceil32(return_data.size) + 292] = return_data.size
    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
        if not mem[ceil32(return_data.size) + 324]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= 2 * arg2:
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 2 * arg2
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(arg1)) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, msg.sender, 2 * arg2, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
        call address(arg1) with:
           funct Mask(32, 224, 0, msg.sender, 2 * arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, 2 * arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            stor4[address(msg.sender)] = 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 462] = 32
            mem[(4 * ceil32(return_data.size)) + 494] = 32
            mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
            revert with memory
              from (4 * ceil32(return_data.size)) + 458
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size <= 0:
            stor4[address(msg.sender)] = 0
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
            stor4[address(msg.sender)] = 0
        mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 462] = 32
        mem[(4 * ceil32(return_data.size)) + 494] = 42
        mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: ERC20 operation did n'
        mem[(4 * ceil32(return_data.size)) + 558] = 'ot succeed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 458
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(arg1)) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, msg.sender, ext_call.return_data[0], 0
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
    call address(arg1) with:
       funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        stor4[address(msg.sender)] = 0
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = return_data.size
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 462] = 32
        mem[(8 * ceil32(return_data.size)) + 494] = 32
        mem[(8 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
        revert with memory
          from (8 * ceil32(return_data.size)) + 458
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if return_data.size <= 0:
        stor4[address(msg.sender)] = 0
    require return_data.size >= 32
    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
    if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
        stor4[address(msg.sender)] = 0
    mem[(8 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 462] = 32
    mem[(8 * ceil32(return_data.size)) + 494] = 42
    mem[(8 * ceil32(return_data.size)) + 526] = 'SafeERC20: ERC20 operation did n'
    mem[(8 * ceil32(return_data.size)) + 558] = 'ot succeed'
    revert with memory
      from (8 * ceil32(return_data.size)) + 458
       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
