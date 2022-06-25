contract main {




// =====================  Runtime code  =====================


const sub_388655fb(?) = eth.balance(this.address)


uint256 INVEST_MIN_AMOUNT;
array of struct sub_b8cfe809;
uint256 sub_c797ad5a;
uint256 divider;
uint256 stor4;
uint256 stor5;
uint256 totalInvested;
uint256 sub_7c2df3f1;
uint256 sub_9ecbd844;
uint256 stor9;
uint256 sub_ab9bbefd;
uint256 sub_4f7691f0;
uint256 startDate;
uint256 startBlock;
address ceoWalletAddress;

function startDate() {
    return startDate
}

function getMinDeposit() {
    return INVEST_MIN_AMOUNT
}

function ceoWallet() {
    return ceoWalletAddress
}

function startBlock() {
    return startBlock
}

function sub_4f7691f0(?) {
    return sub_4f7691f0
}

function totalInvested() {
    return totalInvested
}

function getDivider() {
    return divider
}

function sub_7c2df3f1(?) {
    return sub_7c2df3f1
}

function sub_9ecbd844(?) {
    return sub_9ecbd844
}

function sub_ab9bbefd(?) {
    return sub_ab9bbefd
}

function sub_b8cfe809(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_b8cfe809.length
    return sub_b8cfe809[arg1].field_0
}

function sub_c797ad5a(?) {
    return sub_c797ad5a
}

function INVEST_MIN_AMOUNT() {
    return INVEST_MIN_AMOUNT
}

function _fallback() payable {
    revert
}

function getSiteInfo() {
    return totalInvested, sub_7c2df3f1, sub_9ecbd844, stor9
}

function sub_1204e228(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    stor4 = arg1
}

function sub_4cc1a3c7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    sub_ab9bbefd = arg1
}

function setDivider(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    divider = arg1
}

function setMinDeposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    INVEST_MIN_AMOUNT = arg1
}

function sub_0557bd58(?) {
    if sub_7c2df3f1 >= totalInvested:
        return 0
    if sub_7c2df3f1 > totalInvested:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalInvested - sub_7c2df3f1)
}

function sub_9a274fff(?) {
    if sub_7c2df3f1 >= totalInvested:
        return 0
    if sub_7c2df3f1 > totalInvested:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalInvested - sub_7c2df3f1)
}

function sub_544b4c74(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    if arg1 <= 100:
        revert with 0, 'Max 100 only'
    sub_c797ad5a = arg1
}

function getTokenDecimals(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_d9883952(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor9 + arg1 < stor9:
        revert with 0, 'SafeMath: addition overflow'
    stor9 += arg1
    if sub_7c2df3f1 + arg1 < sub_7c2df3f1:
        revert with 0, 'SafeMath: addition overflow'
    sub_7c2df3f1 += arg1
}

function sub_28749814(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1a6a2148(?) {
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor9 + totalInvested < stor9:
        revert with 0, 'SafeMath: addition overflow'
    if sub_7c2df3f1 > stor9 + totalInvested:
        revert with 0, 'SafeMath: subtraction overflow'
    stor9 = stor9 + totalInvested - sub_7c2df3f1
    sub_7c2df3f1 = totalInvested
}

function sub_fbdd60e4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value 10^18 * arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor9 + (10^18 * arg1) < stor9:
        revert with 0, 'SafeMath: addition overflow'
    stor9 += 10^18 * arg1
    if sub_7c2df3f1 + (10^18 * arg1) < sub_7c2df3f1:
        revert with 0, 'SafeMath: addition overflow'
    sub_7c2df3f1 += 10^18 * arg1
}

function sub_c8a1fd28(?) {
    if sub_b8cfe809.length:
        mem[128] = uint256(sub_b8cfe809.field_0)
        idx = 128
        s = 0
        while (32 * sub_b8cfe809.length) + 96 > idx:
            mem[idx + 32] = sub_b8cfe809[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_b8cfe809.length, data=mem[128 len 32 * sub_b8cfe809.length])
    mem[(32 * sub_b8cfe809.length) + 128] = 32
    mem[(32 * sub_b8cfe809.length) + 160] = sub_b8cfe809.length
    mem[(32 * sub_b8cfe809.length) + 192 len 32 * sub_b8cfe809.length] = mem[128 len 32 * sub_b8cfe809.length]
    return memory
      from (32 * sub_b8cfe809.length) + 128
       len (96 * sub_b8cfe809.length) + 64
}

function withdrawTokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_90bf53da(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3 * 10^ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c5a4267f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    sub_b8cfe809.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_b8cfe809.length > idx:
            sub_b8cfe809[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            sub_b8cfe809[s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_b8cfe809.length > idx:
            sub_b8cfe809[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_8d4f2e74(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if eth.balance(this.address) > arg1:
        if totalInvested > sub_7c2df3f1:
            if sub_7c2df3f1 >= totalInvested:
                idx = 0
                while idx < sub_b8cfe809.length:
                    mem[0] = 1
                    if not arg1:
                        idx = idx + 1
                        continue 
                    require arg1
                    if arg1 * sub_b8cfe809[idx].field_0 / arg1 != sub_b8cfe809[idx].field_0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if 0 <= arg1 * sub_b8cfe809[idx].field_0 / 10:
                        idx = idx + 1
                        continue 
                    require idx < sub_b8cfe809.length
                    return sub_b8cfe809[idx].field_0
            else:
                if sub_7c2df3f1 > totalInvested:
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                while idx < sub_b8cfe809.length:
                    mem[0] = 1
                    if not arg1:
                        if totalInvested - sub_7c2df3f1 <= 0:
                            idx = idx + 1
                            continue 
                        if idx < sub_b8cfe809.length:
                            return sub_b8cfe809[idx].field_0
                    else:
                        if arg1:
                            if arg1 * sub_b8cfe809[idx].field_0 / arg1 != sub_b8cfe809[idx].field_0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if totalInvested - sub_7c2df3f1 <= arg1 * sub_b8cfe809[idx].field_0 / 10:
                                idx = idx + 1
                                continue 
                            if idx < sub_b8cfe809.length:
                                return sub_b8cfe809[idx].field_0
                    revert
            return 0
        else:
            return 0
    else:
        return 0
}

function sub_453e0e9e(?) {
    if not block.number - startBlock:
        if sub_4f7691f0 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if sub_4f7691f0:
            if sub_ab9bbefd > sub_4f7691f0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - startBlock:
                if sub_4f7691f0 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if sub_4f7691f0:
                    return 0 / sub_4f7691f0, 0 / sub_4f7691f0
            else:
                if block.number - startBlock:
                    if (sub_4f7691f0 * block.number) - (sub_ab9bbefd * block.number) - (sub_4f7691f0 * startBlock) + (sub_ab9bbefd * startBlock) / block.number - startBlock != sub_4f7691f0 - sub_ab9bbefd:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if sub_4f7691f0 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_4f7691f0:
                        return 0 / sub_4f7691f0, 
                               (sub_4f7691f0 * block.number) - (sub_ab9bbefd * block.number) - (sub_4f7691f0 * startBlock) + (sub_ab9bbefd * startBlock) / sub_4f7691f0
    else:
        if block.number - startBlock:
            if (block.number * sub_ab9bbefd) - (startBlock * sub_ab9bbefd) / block.number - startBlock != sub_ab9bbefd:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_4f7691f0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_4f7691f0:
                if sub_ab9bbefd > sub_4f7691f0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - startBlock:
                    if sub_4f7691f0 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_4f7691f0:
                        return (block.number * sub_ab9bbefd) - (startBlock * sub_ab9bbefd) / sub_4f7691f0, 0 / sub_4f7691f0
                else:
                    if block.number - startBlock:
                        if (sub_4f7691f0 * block.number) - (sub_ab9bbefd * block.number) - (sub_4f7691f0 * startBlock) + (sub_ab9bbefd * startBlock) / block.number - startBlock != sub_4f7691f0 - sub_ab9bbefd:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if sub_4f7691f0 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if sub_4f7691f0:
                            return (block.number * sub_ab9bbefd) - (startBlock * sub_ab9bbefd) / sub_4f7691f0, 
                                   (sub_4f7691f0 * block.number) - (sub_ab9bbefd * block.number) - (sub_4f7691f0 * startBlock) + (sub_ab9bbefd * startBlock) / sub_4f7691f0
    revert
}

function sub_c4405af2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if block.timestamp <= startDate:
        revert with 0, 'contract does not launch yet'
    if msg.value < INVEST_MIN_AMOUNT:
        revert with 0, 'error min'
    if tx.origin != msg.sender:
        call ceoWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_code.size(msg.sender) > 0:
            call ceoWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if not msg.value:
                call ceoWalletAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_9ecbd844 < sub_9ecbd844:
                    revert with 0, 'SafeMath: addition overflow'
                require divider
                if not block.number % divider:
                    if sub_7c2df3f1 >= totalInvested:
                        if msg.value:
                            require msg.value
                            if 2 * msg.value / msg.value != 2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if 0 > 2 * msg.value:
                                if stor5 != block.number:
                                    if eth.balance(this.address) > msg.value:
                                        if totalInvested > sub_7c2df3f1:
                                            if sub_7c2df3f1 >= totalInvested:
                                                idx = 0
                                                while idx < sub_b8cfe809.length:
                                                    mem[0] = 1
                                                    if not msg.value:
                                                        idx = idx + 1
                                                        continue 
                                                    require msg.value
                                                    if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                    if 0 <= msg.value * sub_b8cfe809[idx].field_0 / 10:
                                                        idx = idx + 1
                                                        continue 
                                                    require idx < sub_b8cfe809.length
                                                    if sub_b8cfe809[idx].field_0 <= 0:
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested += msg.value
                                                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                    else:
                                                        if not msg.value:
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value msg.value * sub_b8cfe809[idx].field_0 / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not msg.value:
                                                            emit Win(0, block.timestamp, msg.sender);
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            emit Win(msg.value * sub_b8cfe809[idx].field_0 / 100, block.timestamp, msg.sender);
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested += msg.value
                                                        stor5 = block.number
                                                        if not msg.value:
                                                            if sub_7c2df3f1 < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            if sub_7c2df3f1 + (msg.value * sub_b8cfe809[idx].field_0 / 100) < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_7c2df3f1 += msg.value * sub_b8cfe809[idx].field_0 / 100
                                            else:
                                                if sub_7c2df3f1 > totalInvested:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                idx = 0
                                                while idx < sub_b8cfe809.length:
                                                    mem[0] = 1
                                                    if not msg.value:
                                                        if totalInvested - sub_7c2df3f1 <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if totalInvested - sub_7c2df3f1 <= msg.value * sub_b8cfe809[idx].field_0 / 10:
                                                            idx = idx + 1
                                                            continue 
                                                    require idx < sub_b8cfe809.length
                                                    if sub_b8cfe809[idx].field_0 <= 0:
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested += msg.value
                                                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                    else:
                                                        if not msg.value:
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value msg.value * sub_b8cfe809[idx].field_0 / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not msg.value:
                                                            emit Win(0, block.timestamp, msg.sender);
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            emit Win(msg.value * sub_b8cfe809[idx].field_0 / 100, block.timestamp, msg.sender);
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested += msg.value
                                                        stor5 = block.number
                                                        if not msg.value:
                                                            if sub_7c2df3f1 < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            if sub_7c2df3f1 + (msg.value * sub_b8cfe809[idx].field_0 / 100) < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_7c2df3f1 += msg.value * sub_b8cfe809[idx].field_0 / 100
                    else:
                        if sub_7c2df3f1 > totalInvested:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not msg.value:
                            if totalInvested - sub_7c2df3f1 > 0:
                                if stor5 != block.number:
                                    if eth.balance(this.address) > msg.value:
                                        if totalInvested > sub_7c2df3f1:
                                            if sub_7c2df3f1 >= totalInvested:
                                                idx = 0
                                                while idx < sub_b8cfe809.length:
                                                    mem[0] = 1
                                                    if not msg.value:
                                                        idx = idx + 1
                                                        continue 
                                                    require msg.value
                                                    if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                    if 0 <= msg.value * sub_b8cfe809[idx].field_0 / 10:
                                                        idx = idx + 1
                                                        continue 
                                                    require idx < sub_b8cfe809.length
                                                    if sub_b8cfe809[idx].field_0 <= 0:
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested += msg.value
                                                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                    else:
                                                        if not msg.value:
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value msg.value * sub_b8cfe809[idx].field_0 / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not msg.value:
                                                            emit Win(0, block.timestamp, msg.sender);
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            emit Win(msg.value * sub_b8cfe809[idx].field_0 / 100, block.timestamp, msg.sender);
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested += msg.value
                                                        stor5 = block.number
                                                        if not msg.value:
                                                            if sub_7c2df3f1 < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            if sub_7c2df3f1 + (msg.value * sub_b8cfe809[idx].field_0 / 100) < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_7c2df3f1 += msg.value * sub_b8cfe809[idx].field_0 / 100
                                            else:
                                                if sub_7c2df3f1 > totalInvested:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                idx = 0
                                                while idx < sub_b8cfe809.length:
                                                    mem[0] = 1
                                                    if not msg.value:
                                                        if totalInvested - sub_7c2df3f1 <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if totalInvested - sub_7c2df3f1 <= msg.value * sub_b8cfe809[idx].field_0 / 10:
                                                            idx = idx + 1
                                                            continue 
                                                    require idx < sub_b8cfe809.length
                                                    if sub_b8cfe809[idx].field_0 <= 0:
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested += msg.value
                                                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                    else:
                                                        if not msg.value:
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value msg.value * sub_b8cfe809[idx].field_0 / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not msg.value:
                                                            emit Win(0, block.timestamp, msg.sender);
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            emit Win(msg.value * sub_b8cfe809[idx].field_0 / 100, block.timestamp, msg.sender);
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested += msg.value
                                                        stor5 = block.number
                                                        if not msg.value:
                                                            if sub_7c2df3f1 < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            if sub_7c2df3f1 + (msg.value * sub_b8cfe809[idx].field_0 / 100) < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_7c2df3f1 += msg.value * sub_b8cfe809[idx].field_0 / 100
                        else:
                            require msg.value
                            if 2 * msg.value / msg.value != 2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if totalInvested - sub_7c2df3f1 > 2 * msg.value:
                                if stor5 != block.number:
                                    if eth.balance(this.address) > msg.value:
                                        if totalInvested > sub_7c2df3f1:
                                            if sub_7c2df3f1 >= totalInvested:
                                                idx = 0
                                                while idx < sub_b8cfe809.length:
                                                    mem[0] = 1
                                                    if not msg.value:
                                                        idx = idx + 1
                                                        continue 
                                                    require msg.value
                                                    if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                    if 0 <= msg.value * sub_b8cfe809[idx].field_0 / 10:
                                                        idx = idx + 1
                                                        continue 
                                                    require idx < sub_b8cfe809.length
                                                    if sub_b8cfe809[idx].field_0 <= 0:
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested += msg.value
                                                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                    else:
                                                        if not msg.value:
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value msg.value * sub_b8cfe809[idx].field_0 / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not msg.value:
                                                            emit Win(0, block.timestamp, msg.sender);
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            emit Win(msg.value * sub_b8cfe809[idx].field_0 / 100, block.timestamp, msg.sender);
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested += msg.value
                                                        stor5 = block.number
                                                        if not msg.value:
                                                            if sub_7c2df3f1 < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            if sub_7c2df3f1 + (msg.value * sub_b8cfe809[idx].field_0 / 100) < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_7c2df3f1 += msg.value * sub_b8cfe809[idx].field_0 / 100
                                            else:
                                                if sub_7c2df3f1 > totalInvested:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                idx = 0
                                                while idx < sub_b8cfe809.length:
                                                    mem[0] = 1
                                                    if not msg.value:
                                                        if totalInvested - sub_7c2df3f1 <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if totalInvested - sub_7c2df3f1 <= msg.value * sub_b8cfe809[idx].field_0 / 10:
                                                            idx = idx + 1
                                                            continue 
                                                    require idx < sub_b8cfe809.length
                                                    if sub_b8cfe809[idx].field_0 <= 0:
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested += msg.value
                                                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                    else:
                                                        if not msg.value:
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value msg.value * sub_b8cfe809[idx].field_0 / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not msg.value:
                                                            emit Win(0, block.timestamp, msg.sender);
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            emit Win(msg.value * sub_b8cfe809[idx].field_0 / 100, block.timestamp, msg.sender);
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if 0 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested += msg.value
                                                        stor5 = block.number
                                                        if not msg.value:
                                                            if sub_7c2df3f1 < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            if sub_7c2df3f1 + (msg.value * sub_b8cfe809[idx].field_0 / 100) < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_7c2df3f1 += msg.value * sub_b8cfe809[idx].field_0 / 100
                if totalInvested + msg.value < totalInvested:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > totalInvested + msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalInvested += msg.value
            else:
                require msg.value
                if msg.value * sub_c797ad5a / msg.value != sub_c797ad5a:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                call ceoWalletAddress with:
                   value msg.value * sub_c797ad5a / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_9ecbd844 + (msg.value * sub_c797ad5a / 100) < sub_9ecbd844:
                    revert with 0, 'SafeMath: addition overflow'
                sub_9ecbd844 += msg.value * sub_c797ad5a / 100
                require divider
                if not block.number % divider:
                    if sub_7c2df3f1 >= totalInvested:
                        if msg.value:
                            require msg.value
                            if 2 * msg.value / msg.value != 2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if 0 > 2 * msg.value:
                                if stor5 != block.number:
                                    if eth.balance(this.address) > msg.value:
                                        if totalInvested > sub_7c2df3f1:
                                            if sub_7c2df3f1 >= totalInvested:
                                                idx = 0
                                                while idx < sub_b8cfe809.length:
                                                    mem[0] = 1
                                                    if not msg.value:
                                                        idx = idx + 1
                                                        continue 
                                                    require msg.value
                                                    if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                    if 0 <= msg.value * sub_b8cfe809[idx].field_0 / 10:
                                                        idx = idx + 1
                                                        continue 
                                                    require idx < sub_b8cfe809.length
                                                    if sub_b8cfe809[idx].field_0 <= 0:
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if msg.value * sub_c797ad5a / 100 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested = totalInvested + msg.value - (msg.value * sub_c797ad5a / 100)
                                                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                    else:
                                                        if not msg.value:
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value msg.value * sub_b8cfe809[idx].field_0 / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not msg.value:
                                                            emit Win(0, block.timestamp, msg.sender);
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            emit Win(msg.value * sub_b8cfe809[idx].field_0 / 100, block.timestamp, msg.sender);
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if msg.value * sub_c797ad5a / 100 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested = totalInvested + msg.value - (msg.value * sub_c797ad5a / 100)
                                                        stor5 = block.number
                                                        if not msg.value:
                                                            if sub_7c2df3f1 < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            if sub_7c2df3f1 + (msg.value * sub_b8cfe809[idx].field_0 / 100) < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_7c2df3f1 += msg.value * sub_b8cfe809[idx].field_0 / 100
                                            else:
                                                if sub_7c2df3f1 > totalInvested:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                idx = 0
                                                while idx < sub_b8cfe809.length:
                                                    mem[0] = 1
                                                    if not msg.value:
                                                        if totalInvested - sub_7c2df3f1 <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if totalInvested - sub_7c2df3f1 <= msg.value * sub_b8cfe809[idx].field_0 / 10:
                                                            idx = idx + 1
                                                            continue 
                                                    require idx < sub_b8cfe809.length
                                                    if sub_b8cfe809[idx].field_0 <= 0:
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if msg.value * sub_c797ad5a / 100 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested = totalInvested + msg.value - (msg.value * sub_c797ad5a / 100)
                                                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                    else:
                                                        if not msg.value:
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value msg.value * sub_b8cfe809[idx].field_0 / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not msg.value:
                                                            emit Win(0, block.timestamp, msg.sender);
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            emit Win(msg.value * sub_b8cfe809[idx].field_0 / 100, block.timestamp, msg.sender);
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if msg.value * sub_c797ad5a / 100 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested = totalInvested + msg.value - (msg.value * sub_c797ad5a / 100)
                                                        stor5 = block.number
                                                        if not msg.value:
                                                            if sub_7c2df3f1 < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            if sub_7c2df3f1 + (msg.value * sub_b8cfe809[idx].field_0 / 100) < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_7c2df3f1 += msg.value * sub_b8cfe809[idx].field_0 / 100
                    else:
                        if sub_7c2df3f1 > totalInvested:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not msg.value:
                            if totalInvested - sub_7c2df3f1 > 0:
                                if stor5 != block.number:
                                    if eth.balance(this.address) > msg.value:
                                        if totalInvested > sub_7c2df3f1:
                                            if sub_7c2df3f1 >= totalInvested:
                                                idx = 0
                                                while idx < sub_b8cfe809.length:
                                                    mem[0] = 1
                                                    if not msg.value:
                                                        idx = idx + 1
                                                        continue 
                                                    require msg.value
                                                    if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                    if 0 <= msg.value * sub_b8cfe809[idx].field_0 / 10:
                                                        idx = idx + 1
                                                        continue 
                                                    require idx < sub_b8cfe809.length
                                                    if sub_b8cfe809[idx].field_0 <= 0:
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if msg.value * sub_c797ad5a / 100 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested = totalInvested + msg.value - (msg.value * sub_c797ad5a / 100)
                                                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                    else:
                                                        if not msg.value:
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value msg.value * sub_b8cfe809[idx].field_0 / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not msg.value:
                                                            emit Win(0, block.timestamp, msg.sender);
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            emit Win(msg.value * sub_b8cfe809[idx].field_0 / 100, block.timestamp, msg.sender);
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if msg.value * sub_c797ad5a / 100 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested = totalInvested + msg.value - (msg.value * sub_c797ad5a / 100)
                                                        stor5 = block.number
                                                        if not msg.value:
                                                            if sub_7c2df3f1 < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            if sub_7c2df3f1 + (msg.value * sub_b8cfe809[idx].field_0 / 100) < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_7c2df3f1 += msg.value * sub_b8cfe809[idx].field_0 / 100
                                            else:
                                                if sub_7c2df3f1 > totalInvested:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                idx = 0
                                                while idx < sub_b8cfe809.length:
                                                    mem[0] = 1
                                                    if not msg.value:
                                                        if totalInvested - sub_7c2df3f1 <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if totalInvested - sub_7c2df3f1 <= msg.value * sub_b8cfe809[idx].field_0 / 10:
                                                            idx = idx + 1
                                                            continue 
                                                    require idx < sub_b8cfe809.length
                                                    if sub_b8cfe809[idx].field_0 <= 0:
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if msg.value * sub_c797ad5a / 100 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested = totalInvested + msg.value - (msg.value * sub_c797ad5a / 100)
                                                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                    else:
                                                        if not msg.value:
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value msg.value * sub_b8cfe809[idx].field_0 / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not msg.value:
                                                            emit Win(0, block.timestamp, msg.sender);
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            emit Win(msg.value * sub_b8cfe809[idx].field_0 / 100, block.timestamp, msg.sender);
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if msg.value * sub_c797ad5a / 100 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested = totalInvested + msg.value - (msg.value * sub_c797ad5a / 100)
                                                        stor5 = block.number
                                                        if not msg.value:
                                                            if sub_7c2df3f1 < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            if sub_7c2df3f1 + (msg.value * sub_b8cfe809[idx].field_0 / 100) < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_7c2df3f1 += msg.value * sub_b8cfe809[idx].field_0 / 100
                        else:
                            require msg.value
                            if 2 * msg.value / msg.value != 2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if totalInvested - sub_7c2df3f1 > 2 * msg.value:
                                if stor5 != block.number:
                                    if eth.balance(this.address) > msg.value:
                                        if totalInvested > sub_7c2df3f1:
                                            if sub_7c2df3f1 >= totalInvested:
                                                idx = 0
                                                while idx < sub_b8cfe809.length:
                                                    mem[0] = 1
                                                    if not msg.value:
                                                        idx = idx + 1
                                                        continue 
                                                    require msg.value
                                                    if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                    if 0 <= msg.value * sub_b8cfe809[idx].field_0 / 10:
                                                        idx = idx + 1
                                                        continue 
                                                    require idx < sub_b8cfe809.length
                                                    if sub_b8cfe809[idx].field_0 <= 0:
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if msg.value * sub_c797ad5a / 100 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested = totalInvested + msg.value - (msg.value * sub_c797ad5a / 100)
                                                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                    else:
                                                        if not msg.value:
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value msg.value * sub_b8cfe809[idx].field_0 / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not msg.value:
                                                            emit Win(0, block.timestamp, msg.sender);
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            emit Win(msg.value * sub_b8cfe809[idx].field_0 / 100, block.timestamp, msg.sender);
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if msg.value * sub_c797ad5a / 100 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested = totalInvested + msg.value - (msg.value * sub_c797ad5a / 100)
                                                        stor5 = block.number
                                                        if not msg.value:
                                                            if sub_7c2df3f1 < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            if sub_7c2df3f1 + (msg.value * sub_b8cfe809[idx].field_0 / 100) < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_7c2df3f1 += msg.value * sub_b8cfe809[idx].field_0 / 100
                                            else:
                                                if sub_7c2df3f1 > totalInvested:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                idx = 0
                                                while idx < sub_b8cfe809.length:
                                                    mem[0] = 1
                                                    if not msg.value:
                                                        if totalInvested - sub_7c2df3f1 <= 0:
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if totalInvested - sub_7c2df3f1 <= msg.value * sub_b8cfe809[idx].field_0 / 10:
                                                            idx = idx + 1
                                                            continue 
                                                    require idx < sub_b8cfe809.length
                                                    if sub_b8cfe809[idx].field_0 <= 0:
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if msg.value * sub_c797ad5a / 100 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested = totalInvested + msg.value - (msg.value * sub_c797ad5a / 100)
                                                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                    else:
                                                        if not msg.value:
                                                            call msg.sender with:
                                                                 gas 2300 wei
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            call msg.sender with:
                                                               value msg.value * sub_b8cfe809[idx].field_0 / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not msg.value:
                                                            emit Win(0, block.timestamp, msg.sender);
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            emit Win(msg.value * sub_b8cfe809[idx].field_0 / 100, block.timestamp, msg.sender);
                                                        if totalInvested + msg.value < totalInvested:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if msg.value * sub_c797ad5a / 100 > totalInvested + msg.value:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        totalInvested = totalInvested + msg.value - (msg.value * sub_c797ad5a / 100)
                                                        stor5 = block.number
                                                        if not msg.value:
                                                            if sub_7c2df3f1 < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            require msg.value
                                                            if msg.value * sub_b8cfe809[idx].field_0 / msg.value != sub_b8cfe809[idx].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            if sub_7c2df3f1 + (msg.value * sub_b8cfe809[idx].field_0 / 100) < sub_7c2df3f1:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            sub_7c2df3f1 += msg.value * sub_b8cfe809[idx].field_0 / 100
                if totalInvested + msg.value < totalInvested:
                    revert with 0, 'SafeMath: addition overflow'
                if msg.value * sub_c797ad5a / 100 > totalInvested + msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalInvested = totalInvested + msg.value - (msg.value * sub_c797ad5a / 100)
            emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
}



}
