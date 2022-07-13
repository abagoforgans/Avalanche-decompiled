contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - sub_7d6d037d(?)
#  - deposit(uint256 arg1)
#
const sub_26d6f658(?) = 1800

const sub_ef468f24(?) = 450


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 stor101;
address sub_b8746e73Address;
uint256 sub_87ae97b4;
uint256 sub_ef52471a;
uint256 sub_9be504d9;
uint256 startBlock;
uint256 rewardEndBlock;
address stor157;
uint256 stor158;
uint256 stor159;
mapping of struct userInfo;
uint256 sub_2739f58c;
uint256 sub_516884a5;
address settingsAddress;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512, userInfo[arg1].field_768
}

function sub_2739f58c(?) payable {
    return sub_2739f58c
}

function startBlock() payable {
    return startBlock
}

function sub_516884a5(?) payable {
    return sub_516884a5
}

function rewardEndBlock() payable {
    return rewardEndBlock
}

function sub_87ae97b4(?) payable {
    return sub_87ae97b4
}

function owner() payable {
    return owner
}

function sub_9be504d9(?) payable {
    return sub_9be504d9
}

function sub_b8746e73(?) payable {
    return sub_b8746e73Address
}

function settings() payable {
    return settingsAddress
}

function sub_ef52471a(?) payable {
    return sub_ef52471a
}

function _fallback() payable {
    revert
}

function poolInfo() payable {
    return stor157, stor158, stor159
}

function sub_88765b26(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor158 = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_0ff3423f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_9be504d9 = arg1
}

function sub_e58ac728(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_ef52471a = arg1
}

function sub_f3bb5031(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_87ae97b4 = arg1
}

function setStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    startBlock = arg1
}

function setEndBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    rewardEndBlock = arg1
}

function sub_ff127bad(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_2739f58c = arg1
    sub_516884a5 = arg2
}

function setSettings(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    settingsAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getCurrentRewardsPerBlock() payable {
    if block.number < startBlock:
        return 0
    if block.number >= rewardEndBlock:
        return 0
    if block.number < sub_87ae97b4:
        if sub_9be504d9 and sub_2739f58c > -1 / sub_9be504d9:
            revert with 0, 17
        return (sub_9be504d9 * sub_2739f58c / 100)
    if block.number >= sub_ef52471a:
        return sub_9be504d9
    if sub_9be504d9 and sub_516884a5 > -1 / sub_9be504d9:
        revert with 0, 17
    return (sub_9be504d9 * sub_516884a5 / 100)
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    sub_b8746e73Address = arg1
    sub_9be504d9 = arg3
    sub_87ae97b4 = arg6
    sub_ef52471a = arg7
    startBlock = arg4
    rewardEndBlock = arg5
    require arg7 < arg5
    stor157 = arg2
    stor158 = startBlock
    stor159 = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if rewardEndBlock < arg2:
        if arg1 >= rewardEndBlock:
            return 0
        if arg1 > sub_87ae97b4:
            if arg1 >= sub_ef52471a:
                if rewardEndBlock < arg1:
                    revert with 0, 17
                return (rewardEndBlock - arg1)
            if rewardEndBlock <= sub_ef52471a:
                if rewardEndBlock < arg1:
                    revert with 0, 17
                if rewardEndBlock - arg1 and sub_516884a5 > -1 / rewardEndBlock - arg1:
                    revert with 0, 17
                return ((rewardEndBlock * sub_516884a5) - (arg1 * sub_516884a5) / 100)
            if rewardEndBlock < sub_ef52471a:
                revert with 0, 17
            if sub_ef52471a < arg1:
                revert with 0, 17
            if sub_ef52471a - arg1 and sub_516884a5 > -1 / sub_ef52471a - arg1:
                revert with 0, 17
            if (sub_ef52471a * sub_516884a5) - (arg1 * sub_516884a5) / 100 > !(rewardEndBlock - sub_ef52471a):
                revert with 0, 17
            return (((sub_ef52471a * sub_516884a5) - (arg1 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a)
        if rewardEndBlock <= sub_87ae97b4:
            if rewardEndBlock < arg1:
                revert with 0, 17
            if rewardEndBlock - arg1 and sub_2739f58c > -1 / rewardEndBlock - arg1:
                revert with 0, 17
            return ((rewardEndBlock * sub_2739f58c) - (arg1 * sub_2739f58c) / 100)
        if rewardEndBlock <= sub_ef52471a:
            if rewardEndBlock < sub_87ae97b4:
                revert with 0, 17
            if rewardEndBlock - sub_87ae97b4 and sub_516884a5 > -1 / rewardEndBlock - sub_87ae97b4:
                revert with 0, 17
            if sub_87ae97b4 < arg1:
                revert with 0, 17
            if sub_87ae97b4 - arg1 and sub_2739f58c > -1 / sub_87ae97b4 - arg1:
                revert with 0, 17
            if (sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) > !((rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5)):
                revert with 0, 17
            return ((sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100)
        if rewardEndBlock < sub_ef52471a:
            revert with 0, 17
        if sub_ef52471a < sub_87ae97b4:
            revert with 0, 17
        if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
            revert with 0, 17
        if sub_87ae97b4 < arg1:
            revert with 0, 17
        if sub_87ae97b4 - arg1 and sub_2739f58c > -1 / sub_87ae97b4 - arg1:
            revert with 0, 17
        if (sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) > !((sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5)):
            revert with 0, 17
        if (sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > !(rewardEndBlock - sub_ef52471a):
            revert with 0, 17
        return (((sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a)
    if arg1 >= arg2:
        return 0
    if arg1 > sub_87ae97b4:
        if arg1 >= sub_ef52471a:
            if arg2 < arg1:
                revert with 0, 17
            return (arg2 - arg1)
        if arg2 <= sub_ef52471a:
            if arg2 < arg1:
                revert with 0, 17
            if arg2 - arg1 and sub_516884a5 > -1 / arg2 - arg1:
                revert with 0, 17
            return ((arg2 * sub_516884a5) - (arg1 * sub_516884a5) / 100)
        if arg2 < sub_ef52471a:
            revert with 0, 17
        if sub_ef52471a < arg1:
            revert with 0, 17
        if sub_ef52471a - arg1 and sub_516884a5 > -1 / sub_ef52471a - arg1:
            revert with 0, 17
        if (sub_ef52471a * sub_516884a5) - (arg1 * sub_516884a5) / 100 > !(arg2 - sub_ef52471a):
            revert with 0, 17
        return (((sub_ef52471a * sub_516884a5) - (arg1 * sub_516884a5) / 100) + arg2 - sub_ef52471a)
    if arg2 <= sub_87ae97b4:
        if arg2 < arg1:
            revert with 0, 17
        if arg2 - arg1 and sub_2739f58c > -1 / arg2 - arg1:
            revert with 0, 17
        return ((arg2 * sub_2739f58c) - (arg1 * sub_2739f58c) / 100)
    if arg2 <= sub_ef52471a:
        if arg2 < sub_87ae97b4:
            revert with 0, 17
        if arg2 - sub_87ae97b4 and sub_516884a5 > -1 / arg2 - sub_87ae97b4:
            revert with 0, 17
        if sub_87ae97b4 < arg1:
            revert with 0, 17
        if sub_87ae97b4 - arg1 and sub_2739f58c > -1 / sub_87ae97b4 - arg1:
            revert with 0, 17
        if (sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) > !((arg2 * sub_516884a5) - (sub_87ae97b4 * sub_516884a5)):
            revert with 0, 17
        return ((sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) + (arg2 * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100)
    if arg2 < sub_ef52471a:
        revert with 0, 17
    if sub_ef52471a < sub_87ae97b4:
        revert with 0, 17
    if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
        revert with 0, 17
    if sub_87ae97b4 < arg1:
        revert with 0, 17
    if sub_87ae97b4 - arg1 and sub_2739f58c > -1 / sub_87ae97b4 - arg1:
        revert with 0, 17
    if (sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) > !((sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5)):
        revert with 0, 17
    if (sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > !(arg2 - sub_ef52471a):
        revert with 0, 17
    return (((sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + arg2 - sub_ef52471a)
}

function emergencyWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor157)
    staticcall stor157.0x313ce567 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0x2d6728cd with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and userInfo[address(arg1)].field_0 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0xae82459f with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).removeReputation(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] * userInfo[address(arg1)].field_0
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0x2d6728cd with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and userInfo[address(arg1)].field_0 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xae82459f with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).removeReputation(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0] * userInfo[address(arg1)].field_0 / 10^uint8(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0x2d6728cd with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and userInfo[address(arg1)].field_0 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            require ext_code.size(settingsAddress)
            staticcall settingsAddress.0xae82459f with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).removeReputation(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0] * userInfo[address(arg1)].field_0 / s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 164] = userInfo[address(arg1)].field_0
    mem[(4 * ceil32(return_data.size)) + 96] = 68
    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + 196] = 32
    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stor157):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(arg1)].field_0, 0
    mem[(4 * ceil32(return_data.size)) + 328] = 0
    call stor157 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, userInfo[address(arg1)].field_0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, userInfo[address(arg1)].field_0, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
            if not mem[(4 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit EmergencyWithdraw(userInfo[address(arg1)].field_0, arg1);
    userInfo[address(arg1)].field_0 = 0
    userInfo[address(arg1)].field_256 = 0
}

function updatePool() payable {
    if block.number > stor158:
        require ext_code.size(stor157)
        staticcall stor157.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if rewardEndBlock < block.number:
                if stor158 >= rewardEndBlock:
                    if False and sub_9be504d9 > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if stor159 > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    stor159 += 0 / ext_call.return_data[0]
                else:
                    if stor158 > sub_87ae97b4:
                        if stor158 >= sub_ef52471a:
                            if rewardEndBlock < stor158:
                                revert with 0, 17
                            if rewardEndBlock - stor158 and sub_9be504d9 > -1 / rewardEndBlock - stor158:
                                revert with 0, 17
                            if (rewardEndBlock * sub_9be504d9) - (stor158 * sub_9be504d9) and 10^12 > -1 / (rewardEndBlock * sub_9be504d9) - (stor158 * sub_9be504d9):
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor159 > !((10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * stor158 * sub_9be504d9) / ext_call.return_data[0]):
                                revert with 0, 17
                            stor159 += (10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * stor158 * sub_9be504d9) / ext_call.return_data[0]
                        else:
                            if rewardEndBlock <= sub_ef52471a:
                                if rewardEndBlock < stor158:
                                    revert with 0, 17
                                if rewardEndBlock - stor158 and sub_516884a5 > -1 / rewardEndBlock - stor158:
                                    revert with 0, 17
                                if (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100 and sub_9be504d9 > -1 / (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100:
                                    revert with 0, 17
                                if (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 and 10^12 > -1 / (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9:
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if stor159 > !(10^12 * (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]):
                                    revert with 0, 17
                                stor159 += 10^12 * (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]
                            else:
                                if rewardEndBlock < sub_ef52471a:
                                    revert with 0, 17
                                if sub_ef52471a < stor158:
                                    revert with 0, 17
                                if sub_ef52471a - stor158 and sub_516884a5 > -1 / sub_ef52471a - stor158:
                                    revert with 0, 17
                                if (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 > !(rewardEndBlock - sub_ef52471a):
                                    revert with 0, 17
                                if ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a and sub_9be504d9 > -1 / ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a:
                                    revert with 0, 17
                                if ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (rewardEndBlock * sub_9be504d9) - (sub_ef52471a * sub_9be504d9) and 10^12 > -1 / ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (rewardEndBlock * sub_9be504d9) - (sub_ef52471a * sub_9be504d9):
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if stor159 > !((10^12 * (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]):
                                    revert with 0, 17
                                stor159 += (10^12 * (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]
                    else:
                        if rewardEndBlock <= sub_87ae97b4:
                            if rewardEndBlock < stor158:
                                revert with 0, 17
                            if rewardEndBlock - stor158 and sub_2739f58c > -1 / rewardEndBlock - stor158:
                                revert with 0, 17
                            if (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 and sub_9be504d9 > -1 / (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100:
                                revert with 0, 17
                            if (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 and 10^12 > -1 / (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor159 > !(10^12 * (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 / ext_call.return_data[0]):
                                revert with 0, 17
                            stor159 += 10^12 * (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 / ext_call.return_data[0]
                        else:
                            if rewardEndBlock <= sub_ef52471a:
                                if rewardEndBlock < sub_87ae97b4:
                                    revert with 0, 17
                                if rewardEndBlock - sub_87ae97b4 and sub_516884a5 > -1 / rewardEndBlock - sub_87ae97b4:
                                    revert with 0, 17
                                if sub_87ae97b4 < stor158:
                                    revert with 0, 17
                                if sub_87ae97b4 - stor158 and sub_2739f58c > -1 / sub_87ae97b4 - stor158:
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) > !((rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5)):
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 and sub_9be504d9 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100:
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 and 10^12 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9:
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if stor159 > !(10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]):
                                    revert with 0, 17
                                stor159 += 10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]
                            else:
                                if rewardEndBlock < sub_ef52471a:
                                    revert with 0, 17
                                if sub_ef52471a < sub_87ae97b4:
                                    revert with 0, 17
                                if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
                                    revert with 0, 17
                                if sub_87ae97b4 < stor158:
                                    revert with 0, 17
                                if sub_87ae97b4 - stor158 and sub_2739f58c > -1 / sub_87ae97b4 - stor158:
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) > !((sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5)):
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > !(rewardEndBlock - sub_ef52471a):
                                    revert with 0, 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a and sub_9be504d9 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a:
                                    revert with 0, 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (rewardEndBlock * sub_9be504d9) - (sub_ef52471a * sub_9be504d9) and 10^12 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (rewardEndBlock * sub_9be504d9) - (sub_ef52471a * sub_9be504d9):
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if stor159 > !((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]):
                                    revert with 0, 17
                                stor159 += (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]
            else:
                if stor158 >= block.number:
                    if False and sub_9be504d9 > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if stor159 > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    stor159 += 0 / ext_call.return_data[0]
                else:
                    if stor158 > sub_87ae97b4:
                        if stor158 >= sub_ef52471a:
                            if block.number < stor158:
                                revert with 0, 17
                            if block.number - stor158 and sub_9be504d9 > -1 / block.number - stor158:
                                revert with 0, 17
                            if (block.number * sub_9be504d9) - (stor158 * sub_9be504d9) and 10^12 > -1 / (block.number * sub_9be504d9) - (stor158 * sub_9be504d9):
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor159 > !((10^12 * block.number * sub_9be504d9) - (10^12 * stor158 * sub_9be504d9) / ext_call.return_data[0]):
                                revert with 0, 17
                            stor159 += (10^12 * block.number * sub_9be504d9) - (10^12 * stor158 * sub_9be504d9) / ext_call.return_data[0]
                        else:
                            if block.number <= sub_ef52471a:
                                if block.number < stor158:
                                    revert with 0, 17
                                if block.number - stor158 and sub_516884a5 > -1 / block.number - stor158:
                                    revert with 0, 17
                                if (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100 and sub_9be504d9 > -1 / (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100:
                                    revert with 0, 17
                                if (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 and 10^12 > -1 / (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9:
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if stor159 > !(10^12 * (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]):
                                    revert with 0, 17
                                stor159 += 10^12 * (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]
                            else:
                                if block.number < sub_ef52471a:
                                    revert with 0, 17
                                if sub_ef52471a < stor158:
                                    revert with 0, 17
                                if sub_ef52471a - stor158 and sub_516884a5 > -1 / sub_ef52471a - stor158:
                                    revert with 0, 17
                                if (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 > !(block.number - sub_ef52471a):
                                    revert with 0, 17
                                if ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100) + block.number - sub_ef52471a and sub_9be504d9 > -1 / ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100) + block.number - sub_ef52471a:
                                    revert with 0, 17
                                if ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (block.number * sub_9be504d9) - (sub_ef52471a * sub_9be504d9) and 10^12 > -1 / ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (block.number * sub_9be504d9) - (sub_ef52471a * sub_9be504d9):
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if stor159 > !((10^12 * (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * block.number * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]):
                                    revert with 0, 17
                                stor159 += (10^12 * (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * block.number * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]
                    else:
                        if block.number <= sub_87ae97b4:
                            if block.number < stor158:
                                revert with 0, 17
                            if block.number - stor158 and sub_2739f58c > -1 / block.number - stor158:
                                revert with 0, 17
                            if (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 and sub_9be504d9 > -1 / (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100:
                                revert with 0, 17
                            if (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 and 10^12 > -1 / (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor159 > !(10^12 * (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 / ext_call.return_data[0]):
                                revert with 0, 17
                            stor159 += 10^12 * (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 / ext_call.return_data[0]
                        else:
                            if block.number <= sub_ef52471a:
                                if block.number < sub_87ae97b4:
                                    revert with 0, 17
                                if block.number - sub_87ae97b4 and sub_516884a5 > -1 / block.number - sub_87ae97b4:
                                    revert with 0, 17
                                if sub_87ae97b4 < stor158:
                                    revert with 0, 17
                                if sub_87ae97b4 - stor158 and sub_2739f58c > -1 / sub_87ae97b4 - stor158:
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) > !((block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5)):
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 and sub_9be504d9 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100:
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 and 10^12 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9:
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if stor159 > !(10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]):
                                    revert with 0, 17
                                stor159 += 10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]
                            else:
                                if block.number < sub_ef52471a:
                                    revert with 0, 17
                                if sub_ef52471a < sub_87ae97b4:
                                    revert with 0, 17
                                if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
                                    revert with 0, 17
                                if sub_87ae97b4 < stor158:
                                    revert with 0, 17
                                if sub_87ae97b4 - stor158 and sub_2739f58c > -1 / sub_87ae97b4 - stor158:
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) > !((sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5)):
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > !(block.number - sub_ef52471a):
                                    revert with 0, 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + block.number - sub_ef52471a and sub_9be504d9 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + block.number - sub_ef52471a:
                                    revert with 0, 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (block.number * sub_9be504d9) - (sub_ef52471a * sub_9be504d9) and 10^12 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (block.number * sub_9be504d9) - (sub_ef52471a * sub_9be504d9):
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if stor159 > !((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * block.number * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]):
                                    revert with 0, 17
                                stor159 += (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * block.number * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]
        stor158 = block.number
}

function harvest(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if arg1 != msg.sender:
        revert with 0, 'Account not signer'
    if block.number > stor158:
        require ext_code.size(stor157)
        staticcall stor157.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if rewardEndBlock < block.number:
                if stor158 >= rewardEndBlock:
                    if False and sub_9be504d9 > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if stor159 > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    stor159 += 0 / ext_call.return_data[0]
                else:
                    if stor158 > sub_87ae97b4:
                        if stor158 >= sub_ef52471a:
                            if rewardEndBlock < stor158:
                                revert with 0, 17
                            if rewardEndBlock - stor158 and sub_9be504d9 > -1 / rewardEndBlock - stor158:
                                revert with 0, 17
                            if (rewardEndBlock * sub_9be504d9) - (stor158 * sub_9be504d9) and 10^12 > -1 / (rewardEndBlock * sub_9be504d9) - (stor158 * sub_9be504d9):
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor159 > !((10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * stor158 * sub_9be504d9) / ext_call.return_data[0]):
                                revert with 0, 17
                            stor159 += (10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * stor158 * sub_9be504d9) / ext_call.return_data[0]
                        else:
                            if rewardEndBlock <= sub_ef52471a:
                                if rewardEndBlock < stor158:
                                    revert with 0, 17
                                if rewardEndBlock - stor158 and sub_516884a5 > -1 / rewardEndBlock - stor158:
                                    revert with 0, 17
                                if (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100 and sub_9be504d9 > -1 / (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100:
                                    revert with 0, 17
                                if (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 and 10^12 > -1 / (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9:
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if stor159 > !(10^12 * (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]):
                                    revert with 0, 17
                                stor159 += 10^12 * (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]
                            else:
                                if rewardEndBlock < sub_ef52471a:
                                    revert with 0, 17
                                if sub_ef52471a < stor158:
                                    revert with 0, 17
                                if sub_ef52471a - stor158 and sub_516884a5 > -1 / sub_ef52471a - stor158:
                                    revert with 0, 17
                                if (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 > !(rewardEndBlock - sub_ef52471a):
                                    revert with 0, 17
                                if ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a and sub_9be504d9 > -1 / ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a:
                                    revert with 0, 17
                                if ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (rewardEndBlock * sub_9be504d9) - (sub_ef52471a * sub_9be504d9) and 10^12 > -1 / ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (rewardEndBlock * sub_9be504d9) - (sub_ef52471a * sub_9be504d9):
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if stor159 > !((10^12 * (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]):
                                    revert with 0, 17
                                stor159 += (10^12 * (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]
                    else:
                        if rewardEndBlock <= sub_87ae97b4:
                            if rewardEndBlock < stor158:
                                revert with 0, 17
                            if rewardEndBlock - stor158 and sub_2739f58c > -1 / rewardEndBlock - stor158:
                                revert with 0, 17
                            if (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 and sub_9be504d9 > -1 / (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100:
                                revert with 0, 17
                            if (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 and 10^12 > -1 / (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor159 > !(10^12 * (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 / ext_call.return_data[0]):
                                revert with 0, 17
                            stor159 += 10^12 * (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 / ext_call.return_data[0]
                        else:
                            if rewardEndBlock <= sub_ef52471a:
                                if rewardEndBlock < sub_87ae97b4:
                                    revert with 0, 17
                                if rewardEndBlock - sub_87ae97b4 and sub_516884a5 > -1 / rewardEndBlock - sub_87ae97b4:
                                    revert with 0, 17
                                if sub_87ae97b4 < stor158:
                                    revert with 0, 17
                                if sub_87ae97b4 - stor158 and sub_2739f58c > -1 / sub_87ae97b4 - stor158:
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) > !((rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5)):
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 and sub_9be504d9 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100:
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 and 10^12 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9:
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if stor159 > !(10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]):
                                    revert with 0, 17
                                stor159 += 10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]
                            else:
                                if rewardEndBlock < sub_ef52471a:
                                    revert with 0, 17
                                if sub_ef52471a < sub_87ae97b4:
                                    revert with 0, 17
                                if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
                                    revert with 0, 17
                                if sub_87ae97b4 < stor158:
                                    revert with 0, 17
                                if sub_87ae97b4 - stor158 and sub_2739f58c > -1 / sub_87ae97b4 - stor158:
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) > !((sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5)):
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > !(rewardEndBlock - sub_ef52471a):
                                    revert with 0, 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a and sub_9be504d9 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a:
                                    revert with 0, 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (rewardEndBlock * sub_9be504d9) - (sub_ef52471a * sub_9be504d9) and 10^12 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (rewardEndBlock * sub_9be504d9) - (sub_ef52471a * sub_9be504d9):
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if stor159 > !((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]):
                                    revert with 0, 17
                                stor159 += (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]
            else:
                if stor158 >= block.number:
                    if False and sub_9be504d9 > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if stor159 > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    stor159 += 0 / ext_call.return_data[0]
                else:
                    if stor158 > sub_87ae97b4:
                        if stor158 >= sub_ef52471a:
                            if block.number < stor158:
                                revert with 0, 17
                            if block.number - stor158 and sub_9be504d9 > -1 / block.number - stor158:
                                revert with 0, 17
                            if (block.number * sub_9be504d9) - (stor158 * sub_9be504d9) and 10^12 > -1 / (block.number * sub_9be504d9) - (stor158 * sub_9be504d9):
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor159 > !((10^12 * block.number * sub_9be504d9) - (10^12 * stor158 * sub_9be504d9) / ext_call.return_data[0]):
                                revert with 0, 17
                            stor159 += (10^12 * block.number * sub_9be504d9) - (10^12 * stor158 * sub_9be504d9) / ext_call.return_data[0]
                        else:
                            if block.number <= sub_ef52471a:
                                if block.number < stor158:
                                    revert with 0, 17
                                if block.number - stor158 and sub_516884a5 > -1 / block.number - stor158:
                                    revert with 0, 17
                                if (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100 and sub_9be504d9 > -1 / (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100:
                                    revert with 0, 17
                                if (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 and 10^12 > -1 / (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9:
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if stor159 > !(10^12 * (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]):
                                    revert with 0, 17
                                stor159 += 10^12 * (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]
                            else:
                                if block.number < sub_ef52471a:
                                    revert with 0, 17
                                if sub_ef52471a < stor158:
                                    revert with 0, 17
                                if sub_ef52471a - stor158 and sub_516884a5 > -1 / sub_ef52471a - stor158:
                                    revert with 0, 17
                                if (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 > !(block.number - sub_ef52471a):
                                    revert with 0, 17
                                if ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100) + block.number - sub_ef52471a and sub_9be504d9 > -1 / ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100) + block.number - sub_ef52471a:
                                    revert with 0, 17
                                if ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (block.number * sub_9be504d9) - (sub_ef52471a * sub_9be504d9) and 10^12 > -1 / ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (block.number * sub_9be504d9) - (sub_ef52471a * sub_9be504d9):
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if stor159 > !((10^12 * (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * block.number * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]):
                                    revert with 0, 17
                                stor159 += (10^12 * (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * block.number * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]
                    else:
                        if block.number <= sub_87ae97b4:
                            if block.number < stor158:
                                revert with 0, 17
                            if block.number - stor158 and sub_2739f58c > -1 / block.number - stor158:
                                revert with 0, 17
                            if (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 and sub_9be504d9 > -1 / (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100:
                                revert with 0, 17
                            if (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 and 10^12 > -1 / (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor159 > !(10^12 * (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 / ext_call.return_data[0]):
                                revert with 0, 17
                            stor159 += 10^12 * (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 / ext_call.return_data[0]
                        else:
                            if block.number <= sub_ef52471a:
                                if block.number < sub_87ae97b4:
                                    revert with 0, 17
                                if block.number - sub_87ae97b4 and sub_516884a5 > -1 / block.number - sub_87ae97b4:
                                    revert with 0, 17
                                if sub_87ae97b4 < stor158:
                                    revert with 0, 17
                                if sub_87ae97b4 - stor158 and sub_2739f58c > -1 / sub_87ae97b4 - stor158:
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) > !((block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5)):
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 and sub_9be504d9 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100:
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 and 10^12 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9:
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if stor159 > !(10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]):
                                    revert with 0, 17
                                stor159 += 10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]
                            else:
                                if block.number < sub_ef52471a:
                                    revert with 0, 17
                                if sub_ef52471a < sub_87ae97b4:
                                    revert with 0, 17
                                if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
                                    revert with 0, 17
                                if sub_87ae97b4 < stor158:
                                    revert with 0, 17
                                if sub_87ae97b4 - stor158 and sub_2739f58c > -1 / sub_87ae97b4 - stor158:
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) > !((sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5)):
                                    revert with 0, 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > !(block.number - sub_ef52471a):
                                    revert with 0, 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + block.number - sub_ef52471a and sub_9be504d9 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + block.number - sub_ef52471a:
                                    revert with 0, 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (block.number * sub_9be504d9) - (sub_ef52471a * sub_9be504d9) and 10^12 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (block.number * sub_9be504d9) - (sub_ef52471a * sub_9be504d9):
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if stor159 > !((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * block.number * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]):
                                    revert with 0, 17
                                stor159 += (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * block.number * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]
        stor158 = block.number
    if userInfo[address(arg1)].field_0 and stor159 > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if userInfo[address(arg1)].field_0 * stor159 / 10^12 < userInfo[address(arg1)].field_256:
        revert with 0, 17
    if userInfo[address(arg1)].field_0 and stor159 > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    userInfo[address(arg1)].field_256 = userInfo[address(arg1)].field_0 * stor159 / 10^12
    if not (userInfo[address(arg1)].field_0 * stor159 / 10^12) - userInfo[address(arg1)].field_256:
        revert with 0, 'Nothing to claim'
    require ext_code.size(sub_b8746e73Address)
    staticcall sub_b8746e73Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_b8746e73Address)
    if (userInfo[address(arg1)].field_0 * stor159 / 10^12) - userInfo[address(arg1)].field_256 <= ext_call.return_data[0]:
        call sub_b8746e73Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), (userInfo[address(arg1)].field_0 * stor159 / 10^12) - userInfo[address(arg1)].field_256
    else:
        call sub_b8746e73Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Harvest(((userInfo[address(arg1)].field_0 * stor159 / 10^12) - userInfo[address(arg1)].field_256), arg1);
    stor101 = 1
}

function pendingRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor157)
    staticcall stor157.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= stor158:
        if userInfo[address(arg1)].field_0 and stor159 > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 * stor159 / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * stor159 / 10^12) - userInfo[address(arg1)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[address(arg1)].field_0 and stor159 > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 * stor159 / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * stor159 / 10^12) - userInfo[address(arg1)].field_256)
    if rewardEndBlock < block.number:
        if stor158 >= rewardEndBlock:
            if False and sub_9be504d9 > 0:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if stor159 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if userInfo[address(arg1)].field_0 and stor159 + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if (stor159 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((stor159 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if stor158 > sub_87ae97b4:
            if stor158 >= sub_ef52471a:
                if rewardEndBlock < stor158:
                    revert with 0, 17
                if rewardEndBlock - stor158 and sub_9be504d9 > -1 / rewardEndBlock - stor158:
                    revert with 0, 17
                if (rewardEndBlock * sub_9be504d9) - (stor158 * sub_9be504d9) and 10^12 > -1 / (rewardEndBlock * sub_9be504d9) - (stor158 * sub_9be504d9):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if stor159 > !((10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * stor158 * sub_9be504d9) / ext_call.return_data[0]):
                    revert with 0, 17
                if userInfo[address(arg1)].field_0 and stor159 + ((10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * stor158 * sub_9be504d9) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                    revert with 0, 17
                if (stor159 * userInfo[address(arg1)].field_0) + ((10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * stor158 * sub_9be504d9) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return (((stor159 * userInfo[address(arg1)].field_0) + ((10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * stor158 * sub_9be504d9) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
            if rewardEndBlock <= sub_ef52471a:
                if rewardEndBlock < stor158:
                    revert with 0, 17
                if rewardEndBlock - stor158 and sub_516884a5 > -1 / rewardEndBlock - stor158:
                    revert with 0, 17
                if (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100 and sub_9be504d9 > -1 / (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100:
                    revert with 0, 17
                if (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 and 10^12 > -1 / (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if stor159 > !(10^12 * (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]):
                    revert with 0, 17
                if userInfo[address(arg1)].field_0 and stor159 + (10^12 * (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                    revert with 0, 17
                if (stor159 * userInfo[address(arg1)].field_0) + (10^12 * (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return (((stor159 * userInfo[address(arg1)].field_0) + (10^12 * (rewardEndBlock * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
            if rewardEndBlock < sub_ef52471a:
                revert with 0, 17
            if sub_ef52471a < stor158:
                revert with 0, 17
            if sub_ef52471a - stor158 and sub_516884a5 > -1 / sub_ef52471a - stor158:
                revert with 0, 17
            if (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 > !(rewardEndBlock - sub_ef52471a):
                revert with 0, 17
            if ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a and sub_9be504d9 > -1 / ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a:
                revert with 0, 17
            if ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (rewardEndBlock * sub_9be504d9) - (sub_ef52471a * sub_9be504d9) and 10^12 > -1 / ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (rewardEndBlock * sub_9be504d9) - (sub_ef52471a * sub_9be504d9):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if stor159 > !((10^12 * (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]):
                revert with 0, 17
            if userInfo[address(arg1)].field_0 and stor159 + ((10^12 * (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if (stor159 * userInfo[address(arg1)].field_0) + ((10^12 * (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((stor159 * userInfo[address(arg1)].field_0) + ((10^12 * (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if rewardEndBlock <= sub_87ae97b4:
            if rewardEndBlock < stor158:
                revert with 0, 17
            if rewardEndBlock - stor158 and sub_2739f58c > -1 / rewardEndBlock - stor158:
                revert with 0, 17
            if (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 and sub_9be504d9 > -1 / (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100:
                revert with 0, 17
            if (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 and 10^12 > -1 / (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if stor159 > !(10^12 * (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 / ext_call.return_data[0]):
                revert with 0, 17
            if userInfo[address(arg1)].field_0 and stor159 + (10^12 * (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if (stor159 * userInfo[address(arg1)].field_0) + (10^12 * (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((stor159 * userInfo[address(arg1)].field_0) + (10^12 * (rewardEndBlock * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if rewardEndBlock <= sub_ef52471a:
            if rewardEndBlock < sub_87ae97b4:
                revert with 0, 17
            if rewardEndBlock - sub_87ae97b4 and sub_516884a5 > -1 / rewardEndBlock - sub_87ae97b4:
                revert with 0, 17
            if sub_87ae97b4 < stor158:
                revert with 0, 17
            if sub_87ae97b4 - stor158 and sub_2739f58c > -1 / sub_87ae97b4 - stor158:
                revert with 0, 17
            if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) > !((rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5)):
                revert with 0, 17
            if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 and sub_9be504d9 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100:
                revert with 0, 17
            if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 and 10^12 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if stor159 > !(10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]):
                revert with 0, 17
            if userInfo[address(arg1)].field_0 and stor159 + (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if (stor159 * userInfo[address(arg1)].field_0) + (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((stor159 * userInfo[address(arg1)].field_0) + (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if rewardEndBlock < sub_ef52471a:
            revert with 0, 17
        if sub_ef52471a < sub_87ae97b4:
            revert with 0, 17
        if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
            revert with 0, 17
        if sub_87ae97b4 < stor158:
            revert with 0, 17
        if sub_87ae97b4 - stor158 and sub_2739f58c > -1 / sub_87ae97b4 - stor158:
            revert with 0, 17
        if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) > !((sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5)):
            revert with 0, 17
        if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > !(rewardEndBlock - sub_ef52471a):
            revert with 0, 17
        if ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a and sub_9be504d9 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a:
            revert with 0, 17
        if ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (rewardEndBlock * sub_9be504d9) - (sub_ef52471a * sub_9be504d9) and 10^12 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (rewardEndBlock * sub_9be504d9) - (sub_ef52471a * sub_9be504d9):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if stor159 > !((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and stor159 + ((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (stor159 * userInfo[address(arg1)].field_0) + ((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((stor159 * userInfo[address(arg1)].field_0) + ((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * rewardEndBlock * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if stor158 >= block.number:
        if False and sub_9be504d9 > 0:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if stor159 > !(0 / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and stor159 + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (stor159 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((stor159 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if stor158 > sub_87ae97b4:
        if stor158 >= sub_ef52471a:
            if block.number < stor158:
                revert with 0, 17
            if block.number - stor158 and sub_9be504d9 > -1 / block.number - stor158:
                revert with 0, 17
            if (block.number * sub_9be504d9) - (stor158 * sub_9be504d9) and 10^12 > -1 / (block.number * sub_9be504d9) - (stor158 * sub_9be504d9):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if stor159 > !((10^12 * block.number * sub_9be504d9) - (10^12 * stor158 * sub_9be504d9) / ext_call.return_data[0]):
                revert with 0, 17
            if userInfo[address(arg1)].field_0 and stor159 + ((10^12 * block.number * sub_9be504d9) - (10^12 * stor158 * sub_9be504d9) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if (stor159 * userInfo[address(arg1)].field_0) + ((10^12 * block.number * sub_9be504d9) - (10^12 * stor158 * sub_9be504d9) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((stor159 * userInfo[address(arg1)].field_0) + ((10^12 * block.number * sub_9be504d9) - (10^12 * stor158 * sub_9be504d9) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if block.number <= sub_ef52471a:
            if block.number < stor158:
                revert with 0, 17
            if block.number - stor158 and sub_516884a5 > -1 / block.number - stor158:
                revert with 0, 17
            if (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100 and sub_9be504d9 > -1 / (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100:
                revert with 0, 17
            if (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 and 10^12 > -1 / (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if stor159 > !(10^12 * (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]):
                revert with 0, 17
            if userInfo[address(arg1)].field_0 and stor159 + (10^12 * (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if (stor159 * userInfo[address(arg1)].field_0) + (10^12 * (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((stor159 * userInfo[address(arg1)].field_0) + (10^12 * (block.number * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if block.number < sub_ef52471a:
            revert with 0, 17
        if sub_ef52471a < stor158:
            revert with 0, 17
        if sub_ef52471a - stor158 and sub_516884a5 > -1 / sub_ef52471a - stor158:
            revert with 0, 17
        if (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 > !(block.number - sub_ef52471a):
            revert with 0, 17
        if ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100) + block.number - sub_ef52471a and sub_9be504d9 > -1 / ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100) + block.number - sub_ef52471a:
            revert with 0, 17
        if ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (block.number * sub_9be504d9) - (sub_ef52471a * sub_9be504d9) and 10^12 > -1 / ((sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (block.number * sub_9be504d9) - (sub_ef52471a * sub_9be504d9):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if stor159 > !((10^12 * (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * block.number * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and stor159 + ((10^12 * (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * block.number * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (stor159 * userInfo[address(arg1)].field_0) + ((10^12 * (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * block.number * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((stor159 * userInfo[address(arg1)].field_0) + ((10^12 * (sub_ef52471a * sub_516884a5) - (stor158 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * block.number * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if block.number <= sub_87ae97b4:
        if block.number < stor158:
            revert with 0, 17
        if block.number - stor158 and sub_2739f58c > -1 / block.number - stor158:
            revert with 0, 17
        if (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 and sub_9be504d9 > -1 / (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100:
            revert with 0, 17
        if (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 and 10^12 > -1 / (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if stor159 > !(10^12 * (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and stor159 + (10^12 * (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (stor159 * userInfo[address(arg1)].field_0) + (10^12 * (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((stor159 * userInfo[address(arg1)].field_0) + (10^12 * (block.number * sub_2739f58c) - (stor158 * sub_2739f58c) / 100 * sub_9be504d9 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if block.number <= sub_ef52471a:
        if block.number < sub_87ae97b4:
            revert with 0, 17
        if block.number - sub_87ae97b4 and sub_516884a5 > -1 / block.number - sub_87ae97b4:
            revert with 0, 17
        if sub_87ae97b4 < stor158:
            revert with 0, 17
        if sub_87ae97b4 - stor158 and sub_2739f58c > -1 / sub_87ae97b4 - stor158:
            revert with 0, 17
        if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) > !((block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5)):
            revert with 0, 17
        if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 and sub_9be504d9 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100:
            revert with 0, 17
        if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 and 10^12 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if stor159 > !(10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and stor159 + (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (stor159 * userInfo[address(arg1)].field_0) + (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((stor159 * userInfo[address(arg1)].field_0) + (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if block.number < sub_ef52471a:
        revert with 0, 17
    if sub_ef52471a < sub_87ae97b4:
        revert with 0, 17
    if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
        revert with 0, 17
    if sub_87ae97b4 < stor158:
        revert with 0, 17
    if sub_87ae97b4 - stor158 and sub_2739f58c > -1 / sub_87ae97b4 - stor158:
        revert with 0, 17
    if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) > !((sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5)):
        revert with 0, 17
    if (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > !(block.number - sub_ef52471a):
        revert with 0, 17
    if ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + block.number - sub_ef52471a and sub_9be504d9 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + block.number - sub_ef52471a:
        revert with 0, 17
    if ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (block.number * sub_9be504d9) - (sub_ef52471a * sub_9be504d9) and 10^12 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (block.number * sub_9be504d9) - (sub_ef52471a * sub_9be504d9):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if stor159 > !((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * block.number * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[address(arg1)].field_0 and stor159 + ((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * block.number * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if (stor159 * userInfo[address(arg1)].field_0) + ((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * block.number * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
        revert with 0, 17
    return (((stor159 * userInfo[address(arg1)].field_0) + ((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor158 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_9be504d9) + (10^12 * block.number * sub_9be504d9) - (10^12 * sub_ef52471a * sub_9be504d9) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
}



}
