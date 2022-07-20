contract main {




// =====================  Runtime code  =====================


const TOKEN = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664


address stor0;
mapping of uint256 users;
uint256 stor2;
uint256 total_deposited;
uint256 minDepositAmount;
uint32 stor5;
address stor5;
uint256 stor5;
uint8 stor6; offset 160
uint128 stor6; offset 160
address stor6;

function enabled() {
    return bool(uint8(stor6.field_160))
}

function minDepositAmount() {
    return minDepositAmount
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1]
}

function getDepositAmount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[address(arg1)]
}

function total_deposited() {
    return total_deposited
}

function _fallback() payable {
    revert
}

function setMinDepositAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not the dev!'
    minDepositAmount = arg1
}

function setEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Caller is not the dev!'
    Mask(96, 0, stor6.field_160) = Mask(96, 0, arg1)
}

function changeDev(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Caller is not the dev!'
    if not arg1:
        revert with 0, 'Zero address'
    stor0 = arg1
}

function sub_7ef6f656(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor0 != msg.sender:
        revert with 0, 'Caller is not the dev!'
    address(stor5) = address(arg1)
    address(stor6.field_0) = address(arg2)
}

function buyToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not uint8(stor6.field_160):
        revert with 0, 'Sale Not Open'
    if block.timestamp <= stor2:
        revert with 0, 'Sale Not Open'
    if arg1 < minDepositAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Should deposit more than minimum deposit amount per one time'
    mem[100] = msg.sender
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Insufficient balance'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Insufficient allowance'
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, mem[(2 * ceil32(return_data.size)) + 228 len 28]
    call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.mem[(2 * ceil32(return_data.size)) + 228 len 4] with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 260] == bool(mem[(2 * ceil32(return_data.size)) + 260])
            if not mem[(2 * ceil32(return_data.size)) + 260]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if arg1 + users[address(msg.sender)] < users[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    users[address(msg.sender)] += arg1
    if arg1 + total_deposited < total_deposited:
        revert with 0, 'SafeMath: addition overflow'
    total_deposited += arg1
}

function withdraw() {
    mem[100] = this.address
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 26
        mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0, mem[ceil32(return_data.size) + 324 len 28]
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.mem[ceil32(return_data.size) + 324 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 328 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 424 len 96] = 0, address(stor6.field_0), 0, mem[ceil32(return_data.size) + 424 len 28]
                call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.mem[ceil32(return_data.size) + 424 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 428 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 456] == bool(mem[ceil32(return_data.size) + 456])
                        if not mem[ceil32(return_data.size) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                    if not mem[ceil32(return_data.size) + 356]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 96] = 0, address(stor6.field_0), 0, mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 28]
                call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 457])
                        if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 457]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if 4 * ext_call.return_data[0] / ext_call.return_data[0] != 4:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 0, mem[ceil32(return_data.size) + 324 len 28]
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.mem[ceil32(return_data.size) + 324 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 328 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 424 len 96] = 0, address(stor6.field_0), 4 * ext_call.return_data[0] / 10, mem[ceil32(return_data.size) + 424 len 28]
                call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.mem[ceil32(return_data.size) + 424 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 428 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 456] == bool(mem[ceil32(return_data.size) + 456])
                        if not mem[ceil32(return_data.size) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                    if not mem[ceil32(return_data.size) + 356]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 96] = 0, address(stor6.field_0), 4 * ext_call.return_data[0] / 10, mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 28]
                call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 457])
                        if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 457]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if 6 * ext_call.return_data[0] / ext_call.return_data[0] != 6:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[ceil32(return_data.size) + 96] = 26
        mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 6 * ext_call.return_data[0] / 10, mem[ceil32(return_data.size) + 324 len 28]
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.mem[ceil32(return_data.size) + 324 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 328 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 424 len 96] = 0, address(stor6.field_0), 0, mem[ceil32(return_data.size) + 424 len 28]
                call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.mem[ceil32(return_data.size) + 424 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 428 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 456] == bool(mem[ceil32(return_data.size) + 456])
                        if not mem[ceil32(return_data.size) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                    if not mem[ceil32(return_data.size) + 356]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 96] = 0, address(stor6.field_0), 0, mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 28]
                call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 457])
                        if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 457]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if 4 * ext_call.return_data[0] / ext_call.return_data[0] != 4:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), 6 * ext_call.return_data[0] / 10, mem[ceil32(return_data.size) + 324 len 28]
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.mem[ceil32(return_data.size) + 324 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 328 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 424 len 96] = 0, address(stor6.field_0), 4 * ext_call.return_data[0] / 10, mem[ceil32(return_data.size) + 424 len 28]
                call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.mem[ceil32(return_data.size) + 424 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 428 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 456] == bool(mem[ceil32(return_data.size) + 456])
                        if not mem[ceil32(return_data.size) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                    if not mem[ceil32(return_data.size) + 356]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 96] = 0, address(stor6.field_0), 4 * ext_call.return_data[0] / 10, mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 28]
                call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 457])
                        if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 457]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
