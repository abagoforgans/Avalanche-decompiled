contract main {




// =====================  Runtime code  =====================


address stor0;
address implementationAddress;
address sub_3db3fb0aAddress;
mapping of struct users;
mapping of struct sub_8bd30ec1;
array of uint256 stor13;
array of uint256 stor14;
uint256 pool_last_draw;
uint256 pool_cycle;
uint256 pool_balance;
uint256 sub_ce1aa76b;
uint256 sub_c4a237e0;
address owner;
mapping of uint256 pool_users_refs_deposits_sum;
mapping of address pool_top;
uint256 total_users;
uint256 total_deposited;
uint256 total_withdraw;
uint256 sub_0c12a144;
address token1Address;
address controllerAddress;
address a2Address;
address a3Address;
address b1Address;
address b2Address;
address b3Address;

function b2() {
    return b2Address
}

function sub_0c12a144(?) {
    return sub_0c12a144
}

function pool_balance() {
    return pool_balance
}

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    return users[address(arg1)].field_0, 
           users[address(arg1)].field_2048,
           users[address(arg1)].field_1536,
           users[address(arg1)].field_512,
           users[address(arg1)].field_768,
           users[address(arg1)].field_1024
}

function sub_3db3fb0a(?) {
    return sub_3db3fb0aAddress
}

function implementation() {
    return implementationAddress
}

function pool_bonuses(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor14.length
    return pool_bonuses[uint8(arg1)]
}

function pool_users_refs_deposits_sum(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return pool_users_refs_deposits_sum[arg1][arg2]
}

function userInfoTotals(address arg1) {
    require calldata.size - 4 >= 32
    return users[address(arg1)].field_256, users[address(arg1)].field_2304
}

function sub_8bd30ec1(?) {
    require calldata.size - 4 >= 32
    return sub_8bd30ec1[arg1].field_0, sub_8bd30ec1[arg1].field_256
}

function owner() {
    return owner
}

function a3() {
    return a3Address
}

function a2() {
    return a2Address
}

function pool_cycle() {
    return pool_cycle
}

function total_withdraw() {
    return total_withdraw
}

function pool_last_draw() {
    return pool_last_draw
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    return users[arg1].field_0, 
           users[arg1].field_256,
           users[arg1].field_512,
           users[arg1].field_768,
           users[arg1].field_1024,
           users[arg1].field_1280,
           users[arg1].field_1536,
           users[arg1].field_1792,
           users[arg1].field_2048,
           users[arg1].field_2304,
           users[arg1].field_2560,
           users[arg1].field_2816,
           users[arg1].field_3072,
           users[arg1].field_3328
}

function ref_bonuses(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor13.length
    return ref_bonuses[uint8(arg1)]
}

function sub_c4a237e0(?) {
    return sub_c4a237e0
}

function pool_top(uint8 arg1) {
    require calldata.size - 4 >= 32
    return pool_top[arg1]
}

function sub_ce1aa76b(?) {
    return sub_ce1aa76b
}

function token1() {
    return token1Address
}

function total_deposited() {
    return total_deposited
}

function total_users() {
    return total_users
}

function b3() {
    return b3Address
}

function b1() {
    return b1Address
}

function controller() {
    return controllerAddress
}

function maxPayoutOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return (22 * arg1 / 10)
}

function sub_9372d2dd(?) {
    if pool_last_draw + (24 * 3600) < block.timestamp:
        return 0
    return (pool_last_draw + -block.timestamp + (24 * 3600))
}

function upgrade(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Only Deployer'
    require implementationAddress != arg1
    implementationAddress = arg1
}

function contractInfo() {
    return total_users, 
           total_deposited,
           total_withdraw,
           pool_last_draw,
           pool_balance,
           pool_users_refs_deposits_sum[stor16][stor21[0]]
}

function _fallback() payable {
    require implementationAddress
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function sub_2544727b(?) {
    require calldata.size - 4 >= 32
    if users[address(arg1)].field_2048 <= 0:
        return 0
    if users[address(arg1)].field_3072 + sub_c4a237e0 < block.timestamp:
        return 0
    if block.timestamp > users[address(arg1)].field_3072 + sub_c4a237e0:
        revert with 0, 'SafeMath: subtraction overflow'
    return (users[address(arg1)].field_3072 + sub_c4a237e0 - block.timestamp)
}

function sub_d713f106(?) {
    require calldata.size - 4 >= 32
    if users[address(arg1)].field_2048 <= 0:
        return 0
    if users[address(arg1)].field_3072 + sub_ce1aa76b >= block.timestamp:
        if block.timestamp > users[address(arg1)].field_3072 + sub_ce1aa76b:
            revert with 0, 'SafeMath: subtraction overflow'
        return (users[address(arg1)].field_3072 + sub_ce1aa76b - block.timestamp)
    if users[address(arg1)].field_3072 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    require sub_ce1aa76b
    if block.timestamp - users[address(arg1)].field_3072 % sub_ce1aa76b > sub_ce1aa76b:
        revert with 0, 'SafeMath: subtraction overflow'
    return (sub_ce1aa76b - (block.timestamp - users[address(arg1)].field_3072 % sub_ce1aa76b))
}

function poolTopInfo() {
    mem[96 len 128] = code.data[8906 len 128]
    mem[64] = 352
    mem[224 len 128] = code.data[8906 len 128]
    idx = 0
    while uint8(idx) < stor14.length:
        if not pool_top[idx << 248]:
            idx = 0
            while idx < 128:
                mem[idx + 352] = mem[idx + 96]
                idx = idx + 32
                continue 
            idx = 0
            while idx < 128:
                mem[idx + 480] = mem[idx + 224]
                idx = idx + 32
                continue 
            return memory
              from 352
               len 256
        require uint8(idx) < 4
        mem[(32 * uint8(idx)) + 96] = pool_top[idx << 248]
        mem[0] = pool_top[idx << 248]
        mem[32] = sha3(pool_cycle, 20)
        mem[(32 * uint8(idx)) + 224] = pool_users_refs_deposits_sum[stor16][stor21[idx << 248]]
        idx = idx + 1
        continue 
    return mem[96 len 128], mem[224 len 128]
}

function payoutOf(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    staticcall this.address.0x8959af3c with:
            gas gas_remaining wei
           args users[address(arg1)].field_1536
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if users[address(arg1)].field_512 >= ext_call.return_data[0]:
        if users[address(arg1)].field_1792 >= ext_call.return_data[0]:
            return 0, ext_call.return_data[0], 0
        if users[address(arg1)].field_3072 + sub_c4a237e0 < block.timestamp:
            require sub_ce1aa76b
            if users[address(arg1)].field_3328 != 1:
                if users[address(arg1)].field_1792 + (users[address(arg1)].field_1536 * sub_c4a237e0 / sub_ce1aa76b / 214) <= ext_call.return_data[0]:
                    return users[address(arg1)].field_1536 * sub_c4a237e0 / sub_ce1aa76b / 214, ext_call.return_data[0], 0
            else:
                if users[address(arg1)].field_1792 + (users[address(arg1)].field_1536 * sub_c4a237e0 / sub_ce1aa76b / 250) <= ext_call.return_data[0]:
                    return users[address(arg1)].field_1536 * sub_c4a237e0 / sub_ce1aa76b / 250, ext_call.return_data[0], 0
        else:
            if users[address(arg1)].field_3328 != 1:
                if users[address(arg1)].field_3328 != 2:
                    if users[address(arg1)].field_1792 <= ext_call.return_data[0]:
                        return 0, ext_call.return_data[0], 0
                else:
                    require sub_ce1aa76b
                    if users[address(arg1)].field_1792 + (users[address(arg1)].field_1536 * block.timestamp - users[address(arg1)].field_3072 / sub_ce1aa76b / 214) <= ext_call.return_data[0]:
                        return users[address(arg1)].field_1536 * block.timestamp - users[address(arg1)].field_3072 / sub_ce1aa76b / 214, 
                               ext_call.return_data[0],
                               0
            else:
                require sub_ce1aa76b
                if users[address(arg1)].field_3328 != 2:
                    if users[address(arg1)].field_1792 + (users[address(arg1)].field_1536 * block.timestamp - users[address(arg1)].field_3072 / sub_ce1aa76b / 250) <= ext_call.return_data[0]:
                        return users[address(arg1)].field_1536 * block.timestamp - users[address(arg1)].field_3072 / sub_ce1aa76b / 250, 
                               ext_call.return_data[0],
                               0
                else:
                    require sub_ce1aa76b
                    if users[address(arg1)].field_1792 + (users[address(arg1)].field_1536 * block.timestamp - users[address(arg1)].field_3072 / sub_ce1aa76b / 214) <= ext_call.return_data[0]:
                        return users[address(arg1)].field_1536 * block.timestamp - users[address(arg1)].field_3072 / sub_ce1aa76b / 214, 
                               ext_call.return_data[0],
                               0
        return ext_call.return_data[0] - users[address(arg1)].field_1792, ext_call.return_data[0], 0
    if users[address(arg1)].field_1792 >= ext_call.return_data[0]:
        return 0, ext_call.return_data[0], ext_call.return_data[0] - users[address(arg1)].field_512
    if users[address(arg1)].field_3072 + sub_c4a237e0 < block.timestamp:
        require sub_ce1aa76b
        if users[address(arg1)].field_3328 != 1:
            if users[address(arg1)].field_1792 + (users[address(arg1)].field_1536 * sub_c4a237e0 / sub_ce1aa76b / 214) <= ext_call.return_data[0]:
                return users[address(arg1)].field_1536 * sub_c4a237e0 / sub_ce1aa76b / 214, 
                       ext_call.return_data[0],
                       ext_call.return_data[0] - users[address(arg1)].field_512
        else:
            if users[address(arg1)].field_1792 + (users[address(arg1)].field_1536 * sub_c4a237e0 / sub_ce1aa76b / 250) <= ext_call.return_data[0]:
                return users[address(arg1)].field_1536 * sub_c4a237e0 / sub_ce1aa76b / 250, 
                       ext_call.return_data[0],
                       ext_call.return_data[0] - users[address(arg1)].field_512
    else:
        if users[address(arg1)].field_3328 != 1:
            if users[address(arg1)].field_3328 != 2:
                if users[address(arg1)].field_1792 <= ext_call.return_data[0]:
                    return 0, ext_call.return_data[0], ext_call.return_data[0] - users[address(arg1)].field_512
            else:
                require sub_ce1aa76b
                if users[address(arg1)].field_1792 + (users[address(arg1)].field_1536 * block.timestamp - users[address(arg1)].field_3072 / sub_ce1aa76b / 214) <= ext_call.return_data[0]:
                    return users[address(arg1)].field_1536 * block.timestamp - users[address(arg1)].field_3072 / sub_ce1aa76b / 214, 
                           ext_call.return_data[0],
                           ext_call.return_data[0] - users[address(arg1)].field_512
        else:
            require sub_ce1aa76b
            if users[address(arg1)].field_3328 != 2:
                if users[address(arg1)].field_1792 + (users[address(arg1)].field_1536 * block.timestamp - users[address(arg1)].field_3072 / sub_ce1aa76b / 250) <= ext_call.return_data[0]:
                    return users[address(arg1)].field_1536 * block.timestamp - users[address(arg1)].field_3072 / sub_ce1aa76b / 250, 
                           ext_call.return_data[0],
                           ext_call.return_data[0] - users[address(arg1)].field_512
            else:
                require sub_ce1aa76b
                if users[address(arg1)].field_1792 + (users[address(arg1)].field_1536 * block.timestamp - users[address(arg1)].field_3072 / sub_ce1aa76b / 214) <= ext_call.return_data[0]:
                    return users[address(arg1)].field_1536 * block.timestamp - users[address(arg1)].field_3072 / sub_ce1aa76b / 214, 
                           ext_call.return_data[0],
                           ext_call.return_data[0] - users[address(arg1)].field_512
    return ext_call.return_data[0] - users[address(arg1)].field_1792, 
           ext_call.return_data[0],
           ext_call.return_data[0] - users[address(arg1)].field_512
}



}
