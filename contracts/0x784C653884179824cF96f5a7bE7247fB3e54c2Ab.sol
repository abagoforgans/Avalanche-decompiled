contract main {




// =====================  Runtime code  =====================


const MULTIPLIER = 10 * 10^18

const USDC = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664


mapping of uint256 depositAmount;
uint256 stor1;
uint256 total_deposited;
uint256 minDepositAmount;
uint32 stor5;
address stor5;
uint8 stor6; offset 160
uint32 stor6;
uint128 stor6; offset 160
address stor6;

function enabled() payable {
    return bool(uint8(stor6.field_160))
}

function minDepositAmount() payable {
    return minDepositAmount
}

function getDepositAmount() payable {
    return depositAmount[msg.sender]
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    return depositAmount[arg1]
}

function total_deposited() payable {
    return total_deposited
}

function _fallback() payable {
    revert
}

function setEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    Mask(96, 0, stor6.field_160) = Mask(96, 0, arg1)
}

function sub_7ef6f656(?) payable {
    require calldata.size - 4 >= 64
    address(stor5) = arg1
    address(stor6.field_0) = arg2
}

function setMinDepositAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        minDepositAmount = 0
    else:
        if 10 * 10^18 * arg1 / arg1 != 10 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        minDepositAmount = 10 * 10^18 * arg1
}

function buyToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        if not uint8(stor6.field_160):
            revert with 0, 'Disabled'
        if block.timestamp <= stor1:
            revert with 0, 'Disabled'
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < minDepositAmount:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        60,
                        0x6453686f756c64206465706f736974206d6f7265207468616e206d696e696d756d206465706f73697420616d6f756e7420706572206f6e652074696d,
                        mem[224 len 4]
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'Insufficient balance'
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'Insufficient allowance'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
        mem[352 len 4] = 0
        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[338 len 14],
                            0,
                            mem[356 len 4]
        else:
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[260]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 339 len 22]
        if depositAmount[address(msg.sender)] < depositAmount[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if total_deposited < total_deposited:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if 10 * 10^18 * arg1 / arg1 != 10 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not uint8(stor6.field_160):
            revert with 0, 'Disabled'
        if block.timestamp <= stor1:
            revert with 0, 'Disabled'
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < minDepositAmount:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        60,
                        0x6453686f756c64206465706f736974206d6f7265207468616e206d696e696d756d206465706f73697420616d6f756e7420706572206f6e652074696d,
                        mem[224 len 4]
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 10 * 10^18 * arg1:
            revert with 0, 'Insufficient balance'
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 10 * 10^18 * arg1:
            revert with 0, 'Insufficient allowance'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, 10 * 10^18 * arg1) >> 32
        mem[352 len 4] = Mask(32, 64, 10 * 10^18 * arg1) >> 64
        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
             gas gas_remaining wei
            args Mask(224, 32, 10 * 10^18 * arg1) << 480, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[338 len 14],
                            Mask(32, 64, 10 * 10^18 * arg1) >> 64,
                            mem[356 len 4]
        else:
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[260]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 339 len 22]
        if (10 * 10^18 * arg1) + depositAmount[address(msg.sender)] < depositAmount[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        depositAmount[address(msg.sender)] += 10 * 10^18 * arg1
        if (10 * 10^18 * arg1) + total_deposited < total_deposited:
            revert with 0, 'SafeMath: addition overflow'
        total_deposited += 10 * 10^18 * arg1
}

function withdraw() payable {
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[356 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(stor5), 0
            mem[480 len 4] = 0
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args 0, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(stor6.field_0), 0
            mem[ceil32(return_data.size) + 613 len 4] = 0
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 585 len 4]
        else:
            if 4 * ext_call.return_data[0] / ext_call.return_data[0] != 4:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[356 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(stor5), 0
            mem[480 len 4] = 0
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args 0, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(stor6.field_0), Mask(224, 32, 4 * ext_call.return_data[0] / 10) >> 32
            mem[ceil32(return_data.size) + 613 len 4] = Mask(32, 64, 4 * ext_call.return_data[0] / 10) >> 64
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args Mask(224, 32, 4 * ext_call.return_data[0] / 10) << 480, mem[ceil32(return_data.size) + 585 len 4]
    else:
        if 6 * ext_call.return_data[0] / ext_call.return_data[0] != 6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[356 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(stor5), Mask(224, 32, 6 * ext_call.return_data[0] / 10) >> 32
            mem[480 len 4] = Mask(32, 64, 6 * ext_call.return_data[0] / 10) >> 64
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(224, 32, 6 * ext_call.return_data[0] / 10) << 480, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(stor6.field_0), 0
            mem[ceil32(return_data.size) + 613 len 4] = 0
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 585 len 4]
        else:
            if 4 * ext_call.return_data[0] / ext_call.return_data[0] != 4:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[356 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(stor5), Mask(224, 32, 6 * ext_call.return_data[0] / 10) >> 32
            mem[480 len 4] = Mask(32, 64, 6 * ext_call.return_data[0] / 10) >> 64
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(224, 32, 6 * ext_call.return_data[0] / 10) << 480, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(stor6.field_0), Mask(224, 32, 4 * ext_call.return_data[0] / 10) >> 32
            mem[ceil32(return_data.size) + 613 len 4] = Mask(32, 64, 4 * ext_call.return_data[0] / 10) >> 64
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args Mask(224, 32, 4 * ext_call.return_data[0] / 10) << 480, mem[ceil32(return_data.size) + 585 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: low-level call failed'
    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    'SafeERC20: low-level call failed',
                    mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 521]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}



}
