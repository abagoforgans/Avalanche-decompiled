contract main {




// =====================  Runtime code  =====================


const TOKEN = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664


address managerAddress;
address partnerAddress;
mapping of uint256 users;
uint256 stor3;
uint256 total_deposited;
uint256 minDepositAmount;
uint256 sub_d9e50421;
uint32 stor7;
address sub_b9b943bdAddress;
uint256 stor7;
uint8 enabled; offset 160
uint32 stor8;
uint128 stor8; offset 160
address sub_50bf24b3Address;
uint256 stor8;

function enabled() {
    return bool(enabled)
}

function manager() {
    return managerAddress
}

function sub_50bf24b3(?) {
    return sub_50bf24b3Address
}

function minDepositAmount() {
    return minDepositAmount
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    return users[arg1]
}

function sub_b9b943bd(?) {
    return address(sub_b9b943bdAddress)
}

function partner() {
    return partnerAddress
}

function sub_d9e50421(?) {
    return sub_d9e50421
}

function total_deposited() {
    return total_deposited
}

function _fallback() payable {
    revert
}

function setMinDepositAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        if partnerAddress != msg.sender:
            revert with 0, 'Caller is not the manager!'
    minDepositAmount = arg1
}

function setEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        if partnerAddress != msg.sender:
            revert with 0, 'Caller is not the manager!'
    Mask(96, 0, stor8.field_160) = Mask(96, 0, arg1)
}

function setWithdrawAddress(address arg1) {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        if partnerAddress != msg.sender:
            revert with 0, 'Caller is not the manager!'
    if not arg1:
        revert with 0, 'Zero address'
    sub_50bf24b3Address = arg1
}

function changeManager(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Zero address'
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x724f6e6c792063757272656e74206d616e616765722063616e206368616e6765206d616e616765,
                    mem[203 len 25]
    managerAddress = arg1
}

function changePartner(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Zero address'
    if partnerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x2e4f6e6c792063757272656e7420706172746e65722063616e206368616e676520706172746e65,
                    mem[203 len 25]
    partnerAddress = arg1
}

function buyToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not enabled:
        revert with 0, 'Sale Not Open'
    if block.timestamp <= stor3:
        revert with 0, 'Sale Not Open'
    if arg1 < minDepositAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0x6453686f756c64206465706f736974206d6f7265207468616e206d696e696d756d206465706f73697420616d6f756e7420706572206f6e652074696d,
                    mem[224 len 4]
    if total_deposited + arg1 > sub_d9e50421:
        revert with 0, 'Over total raise'
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Insufficient balance'
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Insufficient allowance'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[352 len 4] = uint32(arg1)
    call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[338 len 14],
                        uint32(arg1),
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 339 len 22]
    if arg1 + users[address(msg.sender)] < users[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    users[address(msg.sender)] += arg1
    if arg1 + total_deposited < total_deposited:
        revert with 0, 'SafeMath: addition overflow'
    total_deposited += arg1
}

function withdraw() {
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
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), 0
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args 0, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8.field_0), uint32(stor8.field_0), 0
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor8.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor8.field_0), uint32(stor8.field_0), 0) << 256, mem[ceil32(return_data.size) + 489 len 4]
        else:
            if 4 * ext_call.return_data[0] / ext_call.return_data[0] != 4:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), 0
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), 0) << 256, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, sub_50bf24b3Address, Mask(224, 32, 4 * ext_call.return_data[0] / 10) >> 32
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor8.field_0)
                 gas gas_remaining wei
                args 4 * ext_call.return_data[0] / 10, Mask(224, 32, sub_50bf24b3Address, Mask(224, 32, 4 * ext_call.return_data[0] / 10) >> 32) >> 32, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 457]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
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
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, 6 * ext_call.return_data[0] / 10) >> 32
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args Mask(224, 32, 6 * ext_call.return_data[0] / 10) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, sub_50bf24b3Address, 0
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor8.field_0)
                 gas gas_remaining wei
                args 0, Mask(224, 32, 0, sub_50bf24b3Address, 0) >> 32, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
        else:
            if 4 * ext_call.return_data[0] / ext_call.return_data[0] != 4:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, 6 * ext_call.return_data[0] / 10) >> 32
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args Mask(224, 32, 6 * ext_call.return_data[0] / 10) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8.field_0), uint32(stor8.field_0), Mask(224, 32, 4 * ext_call.return_data[0] / 10) >> 32
                call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
                   funct uint32(stor8.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, 4 * ext_call.return_data[0] / 10) << 224, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8.field_0), uint32(stor8.field_0), Mask(224, 32, 4 * ext_call.return_data[0] / 10) >> 32
                call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 with:
                   funct uint32(stor8.field_0)
                     gas gas_remaining wei
                    args Mask(224, 32, 4 * ext_call.return_data[0] / 10) << 224, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
}



}
