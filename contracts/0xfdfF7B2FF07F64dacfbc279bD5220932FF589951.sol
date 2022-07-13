contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1, uint256 arg2, uint256 arg3)
#
const sub_2ecbff1f(?) = 14


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of uint256 stor2;
array of uint256 stor3;
address owner;
address erc20Address;
address distributionAddress;
uint256 paidOut;
uint256 sub_e7cb9929;
uint256 sub_f726877d;
uint256 sub_2c686a94;
uint256 depositFeePercent;
uint256 sub_66fa26ee;
uint256 sub_ebea688d;
uint256 sub_f5894c89;
array of struct poolInfo;
uint256 totalAllocPoint;
uint256 startTimestamp;
mapping of uint256 sub_27c60a47;
uint256 sub_27681926;
uint8 contractState; offset 160
address adminAddress;
array of struct stor18614039704113565071935132612211779146962605293300922914001966896166035203253;
array of address stor26210698214808113478182529867479786006536288330694394792441480643248367150865;
array of uint256 stor26210698214808113478182529867479786006536288330694394792441480643248367150866;
array of uint256 stor26210698214808113478182529867479786006536288330694394792441480643248367150867;
array of uint256 stor26210698214808113478182529867479786006536288330694394792441480643248367150868;
array of uint256 stor26210698214808113478182529867479786006536288330694394792441480643248367150869;
array of uint256 stor26210698214808113478182529867479786006536288330694394792441480643248367150870;
array of uint256 stor26210698214808113478182529867479786006536288330694394792441480643248367150871;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return address(poolInfo[arg1].field_0), 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_27681926(?) payable {
    return sub_27681926
}

function sub_27c60a47(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_27c60a47[arg1]
}

function sub_2c686a94(?) payable {
    return sub_2c686a94
}

function sub_4a7f5504(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_4a7f5504[arg1][address(arg2)].field_768
}

function sub_56da6918(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_4a7f5504[arg1][address(arg2)].field_0
}

function paidOut() payable {
    return paidOut
}

function distribution() payable {
    return distributionAddress
}

function sub_66fa26ee(?) payable {
    return sub_66fa26ee
}

function erc20() payable {
    return erc20Address
}

function contractState() payable {
    if contractState >= 2:
        revert with 0, 33
    return contractState
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return sub_4a7f5504[arg1][arg2].field_0, sub_4a7f5504[arg1][arg2].field_256, sub_4a7f5504[arg1][arg2].field_512
}

function getUserStake(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if arg3 != sub_4a7f5504[arg1][address(arg2)][4][arg3].field_0:
        revert with 0, 'Stake with this id does not exist'
    return sub_4a7f5504[arg1][address(arg2)][4][arg3].field_0, 
           sub_4a7f5504[arg1][address(arg2)][4][arg3].field_256,
           sub_4a7f5504[arg1][address(arg2)][4][arg3].field_512,
           sub_4a7f5504[arg1][address(arg2)][4][arg3].field_768,
           sub_4a7f5504[arg1][address(arg2)][4][arg3].field_1024,
           sub_4a7f5504[arg1][address(arg2)][4][arg3].field_1280
}

function sub_cc037822(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if arg3 != sub_4a7f5504[arg1][address(arg2)][4][arg3].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Stake with this id does not exist'
    return sub_4a7f5504[arg1][address(arg2)][4][arg3].field_512
}

function depositFeePercent() payable {
    return depositFeePercent
}

function startTimestamp() payable {
    return startTimestamp
}

function sub_e7cb9929(?) payable {
    return sub_e7cb9929
}

function sub_ebea688d(?) payable {
    return sub_ebea688d
}

function sub_f5894c89(?) payable {
    return sub_f5894c89
}

function sub_f726877d(?) payable {
    return sub_f726877d
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function halt() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    contractState = 1
}

function resume() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    contractState = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setDistribution(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    distributionAddress = arg1
}

function setDepositFee(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    require arg1 >= arg2 / 100
    require arg1 <= arg2
    depositFeePercent = arg1
    sub_2c686a94 = arg2
    emit 0xf1aec186: arg1, arg2
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot set zero address as admin.'
    adminAddress = arg1
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

function sub_b5f184c4(?) payable {
    require calldata.size - 4 >= 32
    if arg1 != 14:
        if arg1 != 30:
            if arg1 != 45:
                if arg1 != 60:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Stake duration must equal to 14, 30, 45 or 60 days'
    if arg1 < 30:
        return 0
    if arg1 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    return (100 * arg1 / 30)
}

function sub_f96c32bd(?) payable {
    if block.timestamp <= startTimestamp:
        return 0
    staticcall distributionAddress.0x170ce579 with:
            gas gas_remaining wei
           args startTimestamp, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < paidOut:
        revert with 0, 17
    if ext_call.return_data[0] - paidOut < sub_e7cb9929:
        revert with 0, 17
    return (ext_call.return_data[0] - paidOut - sub_e7cb9929)
}

function sub_44d24f19(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if sub_ebea688d <= 0:
        revert with 0, 'Zero fees to collect'
    call erc20Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), sub_ebea688d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_ebea688d = 0
}

function sub_321a269a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if sub_e7cb9929 < sub_f726877d:
        revert with 0, 17
    if sub_e7cb9929 - sub_f726877d <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There are no missed rewards for minting'
    require ext_code.size(distributionAddress)
    call distributionAddress.0xf0dda65c with:
         gas gas_remaining wei
        args address(arg1), sub_e7cb9929 - sub_f726877d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_f726877d > !(sub_e7cb9929 - sub_f726877d):
        revert with 0, 17
    sub_f726877d = sub_e7cb9929
    emit 0x8adf4618: (sub_e7cb9929 - sub_f726877d), address(arg1)
}

function sub_a7c3566a(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > -31536001:
        revert with 0, 17
    staticcall distributionAddress.0x170ce579 with:
            gas gas_remaining wei
           args block.timestamp, block.timestamp + (8760 * 24 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint and 10000 > -1 / ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint:
        revert with 0, 17
    if not poolInfo[arg1].field_1024:
        revert with 0, 18
    return (10000 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024)
}

function sub_df1cc0e3(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if sub_4a7f5504[arg1][address(arg2)].field_768:
        mem[128] = sub_4a7f5504[arg1][address(arg2)][3].field_0
        idx = 128
        s = 0
        while (32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 96 > idx:
            mem[idx + 32] = sub_4a7f5504[arg1][address(arg2)][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_4a7f5504[arg1][address(arg2)].field_768, data=mem[128 len 32 * sub_4a7f5504[arg1][address(arg2)].field_768]), 
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 128] = 32
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 160] = sub_4a7f5504[arg1][address(arg2)].field_768
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 192 len 32 * sub_4a7f5504[arg1][address(arg2)].field_768] = mem[128 len 32 * sub_4a7f5504[arg1][address(arg2)].field_768]
    return memory
      from (32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 128
       len (96 * sub_4a7f5504[arg1][address(arg2)].field_768) + 64
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
    erc20Address = arg1
    distributionAddress = arg2
    startTimestamp = arg3
    contractState = 0
    require arg4 >= arg5 / 100
    require arg4 <= arg5
    depositFeePercent = arg4
    sub_2c686a94 = arg5
    emit 0xf1aec186: arg4, arg5
    sub_66fa26ee = arg6
    sub_27681926 = arg7
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_815b67cb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor2927[address(arg1)].field_768:
        mem[0] = stor2927[address(arg1)][idx + 3].field_0
        mem[32] = sha3(address(arg1), 0x29272c5198ac4c1c7fb0303943f851de04a43367f02c26a44994c42c27db24b5) + 4
        if sub_27681926 and 24 * 3600 > -1 / sub_27681926:
            revert with 0, 17
        if stor2927[address(arg1)][4][stor2927[address(arg1)][idx + 3].field_0].field_1024 > !(24 * 3600 * sub_27681926):
            revert with 0, 17
        if block.timestamp <= stor2927[address(arg1)][4][stor2927[address(arg1)][idx + 3].field_0].field_1024 + (24 * 3600 * sub_27681926):
            if stor2927[address(arg1)][4][stor2927[address(arg1)][idx + 3].field_0].field_512 and stor2927[address(arg1)][4][stor2927[address(arg1)][idx + 3].field_0].field_1280 > -1 / stor2927[address(arg1)][4][stor2927[address(arg1)][idx + 3].field_0].field_512:
                revert with 0, 17
            if 0 > !(stor2927[address(arg1)][4][stor2927[address(arg1)][idx + 3].field_0].field_512 * stor2927[address(arg1)][4][stor2927[address(arg1)][idx + 3].field_0].field_1280 / 100):
                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function restake(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if contractState > 1:
        revert with 0, 33
    if contractState:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract is not operating currently'
    if arg2 != sub_4a7f5504[arg1][msg.sender][4][arg2].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Stake with this id does not exist'
    if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 <= 0:
        revert with 0, 'Stake is empty'
    if sub_4a7f5504[arg1][msg.sender][4][arg2].field_1024 > block.timestamp:
        if sub_4a7f5504[arg1][msg.sender][4][arg2].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't restake before the unlock time'
    if arg3 != 14:
        if arg3 != 30:
            if arg3 != 45:
                if arg3 != 60:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Stake duration must equal to 14, 30, 45 or 60 days'
    if arg3 < 30:
        if arg3 and 24 * 3600 > -1 / arg3:
            revert with 0, 17
        if block.timestamp > !(24 * 3600 * arg3):
            revert with 0, 17
        sub_4a7f5504[arg1][msg.sender][4][arg2].field_1024 = block.timestamp + (24 * 3600 * arg3)
        sub_4a7f5504[arg1][msg.sender][4][arg2].field_1280 = 0
    else:
        if arg3 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if arg3 and 24 * 3600 > -1 / arg3:
            revert with 0, 17
        if block.timestamp > !(24 * 3600 * arg3):
            revert with 0, 17
        sub_4a7f5504[arg1][msg.sender][4][arg2].field_1024 = block.timestamp + (24 * 3600 * arg3)
        sub_4a7f5504[arg1][msg.sender][4][arg2].field_1280 = 100 * arg3 / 30
    emit 0x397f6a4d: (block.timestamp + (24 * 3600 * arg3)), msg.sender, arg1, arg2
}

function sub_5e5de08b(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg3 != sub_4a7f5504[arg1][address(arg2)][4][arg3].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Stake with this id does not exist'
    if block.timestamp <= poolInfo[arg1].field_512:
        if sub_4a7f5504[arg1][address(arg2)][4][arg3].field_512 and poolInfo[arg1].field_768 > -1 / sub_4a7f5504[arg1][address(arg2)][4][arg3].field_512:
            revert with 0, 17
        if sub_4a7f5504[arg1][address(arg2)][4][arg3].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[arg1][address(arg2)][4][arg3].field_768:
            revert with 0, 17
        return ((sub_4a7f5504[arg1][address(arg2)][4][arg3].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][address(arg2)][4][arg3].field_768)
    if not poolInfo[arg1].field_1024:
        if sub_4a7f5504[arg1][address(arg2)][4][arg3].field_512 and poolInfo[arg1].field_768 > -1 / sub_4a7f5504[arg1][address(arg2)][4][arg3].field_512:
            revert with 0, 17
        if sub_4a7f5504[arg1][address(arg2)][4][arg3].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[arg1][address(arg2)][4][arg3].field_768:
            revert with 0, 17
        return ((sub_4a7f5504[arg1][address(arg2)][4][arg3].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][address(arg2)][4][arg3].field_768)
    staticcall distributionAddress.0x170ce579 with:
            gas gas_remaining wei
           args poolInfo[arg1].field_512, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint:
        revert with 0, 17
    if not poolInfo[arg1].field_1024:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024):
        revert with 0, 17
    if sub_4a7f5504[arg1][address(arg2)][4][arg3].field_512 and poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024) > -1 / sub_4a7f5504[arg1][address(arg2)][4][arg3].field_512:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * sub_4a7f5504[arg1][address(arg2)][4][arg3].field_512) + (1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024 * sub_4a7f5504[arg1][address(arg2)][4][arg3].field_512) / 1000000000000000000 * 10^18 < sub_4a7f5504[arg1][address(arg2)][4][arg3].field_768:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * sub_4a7f5504[arg1][address(arg2)][4][arg3].field_512) + (1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024 * sub_4a7f5504[arg1][address(arg2)][4][arg3].field_512) / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][address(arg2)][4][arg3].field_768)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp <= poolInfo[arg1].field_512:
        if not poolInfo[arg1].field_1024:
            if poolInfo[arg1].field_512 > startTimestamp:
                staticcall distributionAddress.0x170ce579 with:
                        gas gas_remaining wei
                       args poolInfo[arg1].field_1280, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if sub_e7cb9929 > !(ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint):
                    revert with 0, 17
                sub_e7cb9929 += ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint
                poolInfo[arg1].field_1280 = poolInfo[arg1].field_512
        else:
            staticcall distributionAddress.0x170ce579 with:
                    gas gas_remaining wei
                   args poolInfo[arg1].field_512, poolInfo[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint > -1:
                revert with 0, 17
            if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint:
                revert with 0, 17
            if not poolInfo[arg1].field_1024:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024):
                revert with 0, 17
            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024
    else:
        if not poolInfo[arg1].field_1024:
            poolInfo[arg1].field_512 = block.timestamp
            if block.timestamp > startTimestamp:
                staticcall distributionAddress.0x170ce579 with:
                        gas gas_remaining wei
                       args poolInfo[arg1].field_1280, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if sub_e7cb9929 > !(ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint):
                    revert with 0, 17
                sub_e7cb9929 += ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint
                poolInfo[arg1].field_1280 = block.timestamp
        else:
            staticcall distributionAddress.0x170ce579 with:
                    gas gas_remaining wei
                   args poolInfo[arg1].field_512, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint > -1:
                revert with 0, 17
            if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint:
                revert with 0, 17
            if not poolInfo[arg1].field_1024:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024):
                revert with 0, 17
            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024
            poolInfo[arg1].field_512 = block.timestamp
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 111
        if block.timestamp <= poolInfo[idx].field_512:
            if not poolInfo[idx].field_1024:
                if poolInfo[idx].field_512 > startTimestamp:
                    mem[mem[64] + 4] = poolInfo[idx].field_1280
                    mem[mem[64] + 36] = block.timestamp
                    staticcall distributionAddress.0x170ce579 with:
                            gas gas_remaining wei
                           args poolInfo[idx].field_1280, block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _31 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_31] and poolInfo[idx].field_256 > -1 / mem[_31]:
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if sub_e7cb9929 > !(mem[_31] * poolInfo[idx].field_256 / totalAllocPoint):
                        revert with 0, 17
                    sub_e7cb9929 += mem[_31] * poolInfo[idx].field_256 / totalAllocPoint
                    poolInfo[idx].field_1280 = poolInfo[idx].field_512
            else:
                mem[mem[64] + 4] = poolInfo[idx].field_512
                mem[mem[64] + 36] = poolInfo[idx].field_512
                staticcall distributionAddress.0x170ce579 with:
                        gas gas_remaining wei
                       args poolInfo[idx].field_512, poolInfo[idx].field_512
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _27 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_27] and poolInfo[idx].field_256 > -1 / mem[_27]:
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if mem[_27] * poolInfo[idx].field_256 / totalAllocPoint > -1:
                    revert with 0, 17
                if mem[_27] * poolInfo[idx].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / mem[_27] * poolInfo[idx].field_256 / totalAllocPoint:
                    revert with 0, 17
                if not poolInfo[idx].field_1024:
                    revert with 0, 18
                if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * mem[_27] * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1024):
                    revert with 0, 17
                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * mem[_27] * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1024
        else:
            if not poolInfo[idx].field_1024:
                poolInfo[idx].field_512 = block.timestamp
                if block.timestamp > startTimestamp:
                    mem[mem[64] + 4] = poolInfo[idx].field_1280
                    mem[mem[64] + 36] = block.timestamp
                    staticcall distributionAddress.0x170ce579 with:
                            gas gas_remaining wei
                           args poolInfo[idx].field_1280, block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _26 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_26] and poolInfo[idx].field_256 > -1 / mem[_26]:
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if sub_e7cb9929 > !(mem[_26] * poolInfo[idx].field_256 / totalAllocPoint):
                        revert with 0, 17
                    sub_e7cb9929 += mem[_26] * poolInfo[idx].field_256 / totalAllocPoint
                    poolInfo[idx].field_1280 = block.timestamp
            else:
                mem[mem[64] + 4] = poolInfo[idx].field_512
                mem[mem[64] + 36] = block.timestamp
                staticcall distributionAddress.0x170ce579 with:
                        gas gas_remaining wei
                       args poolInfo[idx].field_512, block.timestamp
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _21 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_21] and poolInfo[idx].field_256 > -1 / mem[_21]:
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if mem[_21] * poolInfo[idx].field_256 / totalAllocPoint > -1:
                    revert with 0, 17
                if mem[_21] * poolInfo[idx].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / mem[_21] * poolInfo[idx].field_256 / totalAllocPoint:
                    revert with 0, 17
                if not poolInfo[idx].field_1024:
                    revert with 0, 18
                if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * mem[_21] * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1024):
                    revert with 0, 17
                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * mem[_21] * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1024
                poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_55ea49b9(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    mem[0] = address(arg2)
    mem[32] = sha3(arg1, 112)
    idx = 0
    s = 0
    while idx < sub_4a7f5504[arg1][address(arg2)].field_768:
        if arg1 >= poolInfo.length:
            revert with 0, 50
        mem[0] = sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0
        mem[32] = sha3(address(arg2), sha3(arg1, 112)) + 4
        if sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0 != sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_0:
            revert with 0, 'Stake with this id does not exist'
        if block.timestamp <= poolInfo[arg1].field_512:
            if sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512 and poolInfo[arg1].field_768 > -1 / sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512:
                revert with 0, 17
            if sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768:
                revert with 0, 17
            if s > !((sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768
            continue 
        if not poolInfo[arg1].field_1024:
            if sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512 and poolInfo[arg1].field_768 > -1 / sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512:
                revert with 0, 17
            if sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768:
                revert with 0, 17
            if s > !((sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768
            continue 
        mem[mem[64] + 4] = poolInfo[arg1].field_512
        mem[mem[64] + 36] = block.timestamp
        staticcall distributionAddress.0x170ce579 with:
                gas gas_remaining wei
               args poolInfo[arg1].field_512, block.timestamp
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_27] and poolInfo[arg1].field_256 > -1 / mem[_27]:
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        if mem[_27] * poolInfo[arg1].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / mem[_27] * poolInfo[arg1].field_256 / totalAllocPoint:
            revert with 0, 17
        if not poolInfo[arg1].field_1024:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(1000000000000000000 * 10^18 * mem[_27] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024):
            revert with 0, 17
        if sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512 and poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * mem[_27] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024) > -1 / sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512) + (1000000000000000000 * 10^18 * mem[_27] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024 * sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512) / 1000000000000000000 * 10^18 < sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768:
            revert with 0, 17
        if s > !(((poolInfo[arg1].field_768 * sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512) + (1000000000000000000 * 10^18 * mem[_27] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024 * sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512) / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + ((poolInfo[arg1].field_768 * sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512) + (1000000000000000000 * 10^18 * mem[_27] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024 * sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512) / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768
        continue 
    return s
}

function setAllocation(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 111
            if block.timestamp <= poolInfo[idx].field_512:
                if not poolInfo[idx].field_1024:
                    if poolInfo[idx].field_512 > startTimestamp:
                        mem[mem[64] + 4] = poolInfo[idx].field_1280
                        mem[mem[64] + 36] = block.timestamp
                        staticcall distributionAddress.0x170ce579 with:
                                gas gas_remaining wei
                               args poolInfo[idx].field_1280, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _40 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_40] and poolInfo[idx].field_256 > -1 / mem[_40]:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if sub_e7cb9929 > !(mem[_40] * poolInfo[idx].field_256 / totalAllocPoint):
                            revert with 0, 17
                        sub_e7cb9929 += mem[_40] * poolInfo[idx].field_256 / totalAllocPoint
                        poolInfo[idx].field_1280 = poolInfo[idx].field_512
                else:
                    mem[mem[64] + 4] = poolInfo[idx].field_512
                    mem[mem[64] + 36] = poolInfo[idx].field_512
                    staticcall distributionAddress.0x170ce579 with:
                            gas gas_remaining wei
                           args poolInfo[idx].field_512, poolInfo[idx].field_512
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _36 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_36] and poolInfo[idx].field_256 > -1 / mem[_36]:
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if mem[_36] * poolInfo[idx].field_256 / totalAllocPoint > -1:
                        revert with 0, 17
                    if mem[_36] * poolInfo[idx].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / mem[_36] * poolInfo[idx].field_256 / totalAllocPoint:
                        revert with 0, 17
                    if not poolInfo[idx].field_1024:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * mem[_36] * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1024):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * mem[_36] * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1024
            else:
                if not poolInfo[idx].field_1024:
                    poolInfo[idx].field_512 = block.timestamp
                    if block.timestamp > startTimestamp:
                        mem[mem[64] + 4] = poolInfo[idx].field_1280
                        mem[mem[64] + 36] = block.timestamp
                        staticcall distributionAddress.0x170ce579 with:
                                gas gas_remaining wei
                               args poolInfo[idx].field_1280, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _35 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_35] and poolInfo[idx].field_256 > -1 / mem[_35]:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if sub_e7cb9929 > !(mem[_35] * poolInfo[idx].field_256 / totalAllocPoint):
                            revert with 0, 17
                        sub_e7cb9929 += mem[_35] * poolInfo[idx].field_256 / totalAllocPoint
                        poolInfo[idx].field_1280 = block.timestamp
                else:
                    mem[mem[64] + 4] = poolInfo[idx].field_512
                    mem[mem[64] + 36] = block.timestamp
                    staticcall distributionAddress.0x170ce579 with:
                            gas gas_remaining wei
                           args poolInfo[idx].field_512, block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _30 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_30] and poolInfo[idx].field_256 > -1 / mem[_30]:
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if mem[_30] * poolInfo[idx].field_256 / totalAllocPoint > -1:
                        revert with 0, 17
                    if mem[_30] * poolInfo[idx].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / mem[_30] * poolInfo[idx].field_256 / totalAllocPoint:
                        revert with 0, 17
                    if not poolInfo[idx].field_1024:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * mem[_30] * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1024):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * mem[_30] * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1024
                    poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 0, 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 0, 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
}

function collect(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if contractState > 1:
        revert with 0, 33
    if contractState:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract is not operating currently'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if not sub_4a7f5504[arg1][msg.sender][4][arg2].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't withdraw without an existing stake'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp <= poolInfo[arg1].field_512:
        if not poolInfo[arg1].field_1024:
            if poolInfo[arg1].field_512 > startTimestamp:
                staticcall distributionAddress.0x170ce579 with:
                        gas gas_remaining wei
                       args poolInfo[arg1].field_1280, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if sub_e7cb9929 > !(ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint):
                    revert with 0, 17
                sub_e7cb9929 += ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint
                poolInfo[arg1].field_1280 = poolInfo[arg1].field_512
        else:
            staticcall distributionAddress.0x170ce579 with:
                    gas gas_remaining wei
                   args poolInfo[arg1].field_512, poolInfo[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint > -1:
                revert with 0, 17
            if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint:
                revert with 0, 17
            if not poolInfo[arg1].field_1024:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024):
                revert with 0, 17
            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024
    else:
        if not poolInfo[arg1].field_1024:
            poolInfo[arg1].field_512 = block.timestamp
            if block.timestamp > startTimestamp:
                staticcall distributionAddress.0x170ce579 with:
                        gas gas_remaining wei
                       args poolInfo[arg1].field_1280, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if sub_e7cb9929 > !(ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint):
                    revert with 0, 17
                sub_e7cb9929 += ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint
                poolInfo[arg1].field_1280 = block.timestamp
        else:
            staticcall distributionAddress.0x170ce579 with:
                    gas gas_remaining wei
                   args poolInfo[arg1].field_512, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint > -1:
                revert with 0, 17
            if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint:
                revert with 0, 17
            if not poolInfo[arg1].field_1024:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024):
                revert with 0, 17
            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024
            poolInfo[arg1].field_512 = block.timestamp
    if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 and poolInfo[arg1].field_768 > -1 / sub_4a7f5504[arg1][msg.sender][4][arg2].field_512:
        revert with 0, 17
    if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[arg1][msg.sender][4][arg2].field_768:
        revert with 0, 17
    if 0 >= poolInfo.length:
        revert with 0, 50
    staticcall erc20Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_ebea688d:
        revert with 0, 17
    if ext_call.return_data[0] - sub_ebea688d < uint256(poolInfo.field_1024):
        revert with 0, 17
    if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 <= ext_call.return_data[0] - sub_ebea688d - uint256(poolInfo.field_1024):
        call erc20Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 < ext_call.return_data[0] - sub_ebea688d - uint256(poolInfo.field_1024):
            revert with 0, 17
        require ext_code.size(distributionAddress)
        call distributionAddress.0xf0dda65c with:
             gas gas_remaining wei
            args address(this.address), (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 - ext_call.return_data[0] + sub_ebea688d + uint256(poolInfo.field_1024)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call erc20Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if paidOut > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768):
        revert with 0, 17
    paidOut = paidOut + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
    if sub_4a7f5504[arg1][msg.sender].field_256 > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768):
        revert with 0, 17
    sub_4a7f5504[arg1][msg.sender].field_256 = sub_4a7f5504[arg1][msg.sender].field_256 + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
    if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 and poolInfo[arg1].field_768 > -1 / sub_4a7f5504[arg1][msg.sender][4][arg2].field_512:
        revert with 0, 17
    sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 = sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
    emit Rewards(((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768), msg.sender, arg1, arg2);
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if poolInfo.length:
        if arg3:
            idx = 0
            while idx < poolInfo.length:
                mem[0] = 111
                if block.timestamp <= poolInfo[idx].field_512:
                    if not poolInfo[idx].field_1024:
                        if poolInfo[idx].field_512 > startTimestamp:
                            mem[mem[64] + 4] = poolInfo[idx].field_1280
                            mem[mem[64] + 36] = block.timestamp
                            staticcall distributionAddress.0x170ce579 with:
                                    gas gas_remaining wei
                                   args poolInfo[idx].field_1280, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _146 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_146] and poolInfo[idx].field_256 > -1 / mem[_146]:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if sub_e7cb9929 > !(mem[_146] * poolInfo[idx].field_256 / totalAllocPoint):
                                revert with 0, 17
                            sub_e7cb9929 += mem[_146] * poolInfo[idx].field_256 / totalAllocPoint
                            poolInfo[idx].field_1280 = poolInfo[idx].field_512
                    else:
                        mem[mem[64] + 4] = poolInfo[idx].field_512
                        mem[mem[64] + 36] = poolInfo[idx].field_512
                        staticcall distributionAddress.0x170ce579 with:
                                gas gas_remaining wei
                               args poolInfo[idx].field_512, poolInfo[idx].field_512
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _122 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_122] and poolInfo[idx].field_256 > -1 / mem[_122]:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if mem[_122] * poolInfo[idx].field_256 / totalAllocPoint > -1:
                            revert with 0, 17
                        if mem[_122] * poolInfo[idx].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / mem[_122] * poolInfo[idx].field_256 / totalAllocPoint:
                            revert with 0, 17
                        if not poolInfo[idx].field_1024:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * mem[_122] * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1024):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * mem[_122] * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1024
                else:
                    if not poolInfo[idx].field_1024:
                        poolInfo[idx].field_512 = block.timestamp
                        if block.timestamp > startTimestamp:
                            mem[mem[64] + 4] = poolInfo[idx].field_1280
                            mem[mem[64] + 36] = block.timestamp
                            staticcall distributionAddress.0x170ce579 with:
                                    gas gas_remaining wei
                                   args poolInfo[idx].field_1280, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _121 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_121] and poolInfo[idx].field_256 > -1 / mem[_121]:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if sub_e7cb9929 > !(mem[_121] * poolInfo[idx].field_256 / totalAllocPoint):
                                revert with 0, 17
                            sub_e7cb9929 += mem[_121] * poolInfo[idx].field_256 / totalAllocPoint
                            poolInfo[idx].field_1280 = block.timestamp
                    else:
                        mem[mem[64] + 4] = poolInfo[idx].field_512
                        mem[mem[64] + 36] = block.timestamp
                        staticcall distributionAddress.0x170ce579 with:
                                gas gas_remaining wei
                               args poolInfo[idx].field_512, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _111 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_111] and poolInfo[idx].field_256 > -1 / mem[_111]:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if mem[_111] * poolInfo[idx].field_256 / totalAllocPoint > -1:
                            revert with 0, 17
                        if mem[_111] * poolInfo[idx].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / mem[_111] * poolInfo[idx].field_256 / totalAllocPoint:
                            revert with 0, 17
                        if not poolInfo[idx].field_1024:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * mem[_111] * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1024):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * mem[_111] * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1024
                        poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    else:
        if erc20Address != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'First pool's lp token must be a reward token'
        if arg3:
            idx = 0
            while idx < poolInfo.length:
                mem[0] = 111
                if block.timestamp <= poolInfo[idx].field_512:
                    if not poolInfo[idx].field_1024:
                        if poolInfo[idx].field_512 > startTimestamp:
                            mem[mem[64] + 4] = poolInfo[idx].field_1280
                            mem[mem[64] + 36] = block.timestamp
                            staticcall distributionAddress.0x170ce579 with:
                                    gas gas_remaining wei
                                   args poolInfo[idx].field_1280, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _164 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_164] and poolInfo[idx].field_256 > -1 / mem[_164]:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if sub_e7cb9929 > !(mem[_164] * poolInfo[idx].field_256 / totalAllocPoint):
                                revert with 0, 17
                            sub_e7cb9929 += mem[_164] * poolInfo[idx].field_256 / totalAllocPoint
                            poolInfo[idx].field_1280 = poolInfo[idx].field_512
                    else:
                        mem[mem[64] + 4] = poolInfo[idx].field_512
                        mem[mem[64] + 36] = poolInfo[idx].field_512
                        staticcall distributionAddress.0x170ce579 with:
                                gas gas_remaining wei
                               args poolInfo[idx].field_512, poolInfo[idx].field_512
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _126 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_126] and poolInfo[idx].field_256 > -1 / mem[_126]:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if mem[_126] * poolInfo[idx].field_256 / totalAllocPoint > -1:
                            revert with 0, 17
                        if mem[_126] * poolInfo[idx].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / mem[_126] * poolInfo[idx].field_256 / totalAllocPoint:
                            revert with 0, 17
                        if not poolInfo[idx].field_1024:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * mem[_126] * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1024):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * mem[_126] * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1024
                else:
                    if not poolInfo[idx].field_1024:
                        poolInfo[idx].field_512 = block.timestamp
                        if block.timestamp > startTimestamp:
                            mem[mem[64] + 4] = poolInfo[idx].field_1280
                            mem[mem[64] + 36] = block.timestamp
                            staticcall distributionAddress.0x170ce579 with:
                                    gas gas_remaining wei
                                   args poolInfo[idx].field_1280, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _125 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_125] and poolInfo[idx].field_256 > -1 / mem[_125]:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if sub_e7cb9929 > !(mem[_125] * poolInfo[idx].field_256 / totalAllocPoint):
                                revert with 0, 17
                            sub_e7cb9929 += mem[_125] * poolInfo[idx].field_256 / totalAllocPoint
                            poolInfo[idx].field_1280 = block.timestamp
                    else:
                        mem[mem[64] + 4] = poolInfo[idx].field_512
                        mem[mem[64] + 36] = block.timestamp
                        staticcall distributionAddress.0x170ce579 with:
                                gas gas_remaining wei
                               args poolInfo[idx].field_512, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _116 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_116] and poolInfo[idx].field_256 > -1 / mem[_116]:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if mem[_116] * poolInfo[idx].field_256 / totalAllocPoint > -1:
                            revert with 0, 17
                        if mem[_116] * poolInfo[idx].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / mem[_116] * poolInfo[idx].field_256 / totalAllocPoint:
                            revert with 0, 17
                        if not poolInfo[idx].field_1024:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * mem[_116] * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1024):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * mem[_116] * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_1024
                        poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    poolInfo.length++
    stor39F2[stor111.length] = arg2
    stor39F2[stor111.length] = arg1
    if block.timestamp > startTimestamp:
        stor39F2[stor111.length] = block.timestamp
        stor39F2[stor111.length] = 0
        stor39F2[stor111.length] = 0
        stor39F2[stor111.length] = block.timestamp
    else:
        stor39F2[stor111.length] = startTimestamp
        stor39F2[stor111.length] = 0
        stor39F2[stor111.length] = 0
        stor39F2[stor111.length] = startTimestamp
    stor39F2[stor111.length] = 0
}

function getUserStakes(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    mem[0] = arg2
    mem[32] = sha3(arg1, 112)
    if sub_4a7f5504[arg1][address(arg2)].field_768 > test266151307():
        revert with 0, 65
    mem[96] = sub_4a7f5504[arg1][address(arg2)].field_768
    mem[64] = (32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 128
    if not sub_4a7f5504[arg1][address(arg2)].field_768:
        idx = 0
        while idx < sub_4a7f5504[arg1][address(arg2)].field_768:
            mem[0] = sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0
            mem[32] = sha3(address(arg2), sha3(arg1, 112)) + 4
            _37 = mem[64]
            mem[64] = mem[64] + 192
            mem[_37] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_0
            mem[_37 + 32] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_256
            mem[_37 + 64] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512
            mem[_37 + 96] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768
            mem[_37 + 128] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1024
            mem[_37 + 160] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _37
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _34 = mem[64]
        mem[mem[64]] = 32
        _40 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _40:
            _63 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_63 + 32]
            mem[s + 64] = mem[_63 + 64]
            mem[s + 96] = mem[_63 + 96]
            mem[s + 128] = mem[_63 + 128]
            mem[s + 160] = mem[_63 + 160]
            idx = idx + 1
            s = s + 192
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _34 + (192 * _40) + -mem[64] + 64
    mem[64] = (32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 320
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 128] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 160] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 192] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 224] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 256] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 288] = 0
    mem[var15002] = var15001
    if not var15003 - 1:
        idx = 0
        while idx < sub_4a7f5504[arg1][address(arg2)].field_768:
            mem[0] = sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0
            mem[32] = sha3(address(arg2), sha3(arg1, 112)) + 4
            _105 = mem[64]
            mem[64] = mem[64] + 192
            mem[_105] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_0
            mem[_105 + 32] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_256
            mem[_105 + 64] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512
            mem[_105 + 96] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768
            mem[_105 + 128] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1024
            mem[_105 + 160] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _105
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _102 = mem[64]
        mem[mem[64]] = 32
        _107 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _107:
            _131 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_131 + 32]
            mem[s + 64] = mem[_131 + 64]
            mem[s + 96] = mem[_131 + 96]
            mem[s + 128] = mem[_131 + 128]
            mem[s + 160] = mem[_131 + 160]
            idx = idx + 1
            s = s + 192
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _102 + (192 * _107) + -mem[64] + 64
    mem[64] = (32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 512
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 320] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 352] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 384] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 416] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 448] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 480] = 0
    mem[var19002] = var19001
    if not var19003 - 1:
        idx = 0
        while idx < sub_4a7f5504[arg1][address(arg2)].field_768:
            mem[0] = sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0
            mem[32] = sha3(address(arg2), sha3(arg1, 112)) + 4
            _172 = mem[64]
            mem[64] = mem[64] + 192
            mem[_172] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_0
            mem[_172 + 32] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_256
            mem[_172 + 64] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512
            mem[_172 + 96] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768
            mem[_172 + 128] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1024
            mem[_172 + 160] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _172
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _169 = mem[64]
        mem[mem[64]] = 32
        _174 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _174:
            _198 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_198 + 32]
            mem[s + 64] = mem[_198 + 64]
            mem[s + 96] = mem[_198 + 96]
            mem[s + 128] = mem[_198 + 128]
            mem[s + 160] = mem[_198 + 160]
            idx = idx + 1
            s = s + 192
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _169 + (192 * _174) + -mem[64] + 64
    mem[64] = (32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 704
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 512] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 544] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 576] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 608] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 640] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 672] = 0
    mem[var23002] = var23001
    if not var23003 - 1:
        idx = 0
        while idx < sub_4a7f5504[arg1][address(arg2)].field_768:
            mem[0] = sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0
            mem[32] = sha3(address(arg2), sha3(arg1, 112)) + 4
            _239 = mem[64]
            mem[64] = mem[64] + 192
            mem[_239] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_0
            mem[_239 + 32] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_256
            mem[_239 + 64] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512
            mem[_239 + 96] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768
            mem[_239 + 128] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1024
            mem[_239 + 160] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _239
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _236 = mem[64]
        mem[mem[64]] = 32
        _241 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _241:
            _265 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_265 + 32]
            mem[s + 64] = mem[_265 + 64]
            mem[s + 96] = mem[_265 + 96]
            mem[s + 128] = mem[_265 + 128]
            mem[s + 160] = mem[_265 + 160]
            idx = idx + 1
            s = s + 192
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _236 + (192 * _241) + -mem[64] + 64
    mem[64] = (32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 896
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 704] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 736] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 768] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 800] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 832] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 864] = 0
    mem[var27002] = var27001
    if not var27003 - 1:
        idx = 0
        while idx < sub_4a7f5504[arg1][address(arg2)].field_768:
            mem[0] = sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0
            mem[32] = sha3(address(arg2), sha3(arg1, 112)) + 4
            _306 = mem[64]
            mem[64] = mem[64] + 192
            mem[_306] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_0
            mem[_306 + 32] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_256
            mem[_306 + 64] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512
            mem[_306 + 96] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768
            mem[_306 + 128] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1024
            mem[_306 + 160] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _306
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _303 = mem[64]
        mem[mem[64]] = 32
        _308 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _308:
            _332 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_332 + 32]
            mem[s + 64] = mem[_332 + 64]
            mem[s + 96] = mem[_332 + 96]
            mem[s + 128] = mem[_332 + 128]
            mem[s + 160] = mem[_332 + 160]
            idx = idx + 1
            s = s + 192
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _303 + (192 * _308) + -mem[64] + 64
    mem[64] = (32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1088
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 896] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 928] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 960] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 992] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1024] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1056] = 0
    mem[var31002] = var31001
    if not var31003 - 1:
        idx = 0
        while idx < sub_4a7f5504[arg1][address(arg2)].field_768:
            mem[0] = sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0
            mem[32] = sha3(address(arg2), sha3(arg1, 112)) + 4
            _373 = mem[64]
            mem[64] = mem[64] + 192
            mem[_373] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_0
            mem[_373 + 32] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_256
            mem[_373 + 64] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512
            mem[_373 + 96] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768
            mem[_373 + 128] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1024
            mem[_373 + 160] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _373
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _370 = mem[64]
        mem[mem[64]] = 32
        _375 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _375:
            _399 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_399 + 32]
            mem[s + 64] = mem[_399 + 64]
            mem[s + 96] = mem[_399 + 96]
            mem[s + 128] = mem[_399 + 128]
            mem[s + 160] = mem[_399 + 160]
            idx = idx + 1
            s = s + 192
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _370 + (192 * _375) + -mem[64] + 64
    mem[64] = (32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1280
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1088] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1120] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1152] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1184] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1216] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1248] = 0
    mem[var35002] = var35001
    if not var35003 - 1:
        idx = 0
        while idx < sub_4a7f5504[arg1][address(arg2)].field_768:
            mem[0] = sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0
            mem[32] = sha3(address(arg2), sha3(arg1, 112)) + 4
            _440 = mem[64]
            mem[64] = mem[64] + 192
            mem[_440] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_0
            mem[_440 + 32] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_256
            mem[_440 + 64] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512
            mem[_440 + 96] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768
            mem[_440 + 128] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1024
            mem[_440 + 160] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _440
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _437 = mem[64]
        mem[mem[64]] = 32
        _442 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _442:
            _466 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_466 + 32]
            mem[s + 64] = mem[_466 + 64]
            mem[s + 96] = mem[_466 + 96]
            mem[s + 128] = mem[_466 + 128]
            mem[s + 160] = mem[_466 + 160]
            idx = idx + 1
            s = s + 192
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _437 + (192 * _442) + -mem[64] + 64
    mem[64] = (32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1472
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1280] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1312] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1344] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1376] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1408] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1440] = 0
    mem[var39002] = var39001
    if not var39003 - 1:
        idx = 0
        while idx < sub_4a7f5504[arg1][address(arg2)].field_768:
            mem[0] = sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0
            mem[32] = sha3(address(arg2), sha3(arg1, 112)) + 4
            _507 = mem[64]
            mem[64] = mem[64] + 192
            mem[_507] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_0
            mem[_507 + 32] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_256
            mem[_507 + 64] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512
            mem[_507 + 96] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768
            mem[_507 + 128] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1024
            mem[_507 + 160] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _507
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _504 = mem[64]
        mem[mem[64]] = 32
        _509 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _509:
            _533 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_533 + 32]
            mem[s + 64] = mem[_533 + 64]
            mem[s + 96] = mem[_533 + 96]
            mem[s + 128] = mem[_533 + 128]
            mem[s + 160] = mem[_533 + 160]
            idx = idx + 1
            s = s + 192
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _504 + (192 * _509) + -mem[64] + 64
    mem[64] = (32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1664
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1472] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1504] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1536] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1568] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1600] = 0
    mem[(32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1632] = 0
    mem[var43002] = var43001
    if var43003 - 1:
        mem[64] = (32 * sub_4a7f5504[arg1][address(arg2)].field_768) + 1856
        mem[var47002] = var47001
        if not var47003 - 1:
            idx = 0
            while idx < sub_4a7f5504[arg1][address(arg2)].field_768:
                mem[0] = sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0
                mem[32] = sha3(address(arg2), sha3(arg1, 112)) + 4
                _641 = mem[64]
                mem[64] = mem[64] + 192
                mem[_641] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_0
                mem[_641 + 32] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_256
                mem[_641 + 64] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512
                mem[_641 + 96] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768
                mem[_641 + 128] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1024
                mem[_641 + 160] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1280
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _641
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        # nil
    else:
        idx = 0
        while idx < sub_4a7f5504[arg1][address(arg2)].field_768:
            mem[0] = sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0
            mem[32] = sha3(address(arg2), sha3(arg1, 112)) + 4
            _574 = mem[64]
            mem[64] = mem[64] + 192
            mem[_574] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_0
            mem[_574 + 32] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_256
            mem[_574 + 64] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_512
            mem[_574 + 96] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_768
            mem[_574 + 128] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1024
            mem[_574 + 160] = sub_4a7f5504[arg1][address(arg2)][4][sub_4a7f5504[arg1][address(arg2)][idx + 3].field_0].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _574
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _571 = mem[64]
        mem[mem[64]] = 32
        _576 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _576:
            _600 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_600 + 32]
            mem[s + 64] = mem[_600 + 64]
            mem[s + 96] = mem[_600 + 96]
            mem[s + 128] = mem[_600 + 128]
            mem[s + 160] = mem[_600 + 160]
            idx = idx + 1
            s = s + 192
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _571 + (192 * _576) + -mem[64] + 64
}

function sub_bff1208d(?) payable {
    require calldata.size - 4 >= 64
    if contractState > 1:
        revert with 0, 33
    if contractState:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract is not operating currently'
    if arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only compound in the primary pool (_pid == 0)'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg2 != sub_4a7f5504[arg1][msg.sender][4][arg2].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Stake with this id does not exist'
    if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User does not have anything staked'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp <= poolInfo[arg1].field_512:
        if not poolInfo[arg1].field_1024:
            if poolInfo[arg1].field_512 > startTimestamp:
                staticcall distributionAddress.0x170ce579 with:
                        gas gas_remaining wei
                       args poolInfo[arg1].field_1280, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if sub_e7cb9929 > !(ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint):
                    revert with 0, 17
                sub_e7cb9929 += ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint
                poolInfo[arg1].field_1280 = poolInfo[arg1].field_512
        else:
            staticcall distributionAddress.0x170ce579 with:
                    gas gas_remaining wei
                   args poolInfo[arg1].field_512, poolInfo[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint > -1:
                revert with 0, 17
            if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint:
                revert with 0, 17
            if not poolInfo[arg1].field_1024:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024):
                revert with 0, 17
            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024
    else:
        if not poolInfo[arg1].field_1024:
            poolInfo[arg1].field_512 = block.timestamp
            if block.timestamp > startTimestamp:
                staticcall distributionAddress.0x170ce579 with:
                        gas gas_remaining wei
                       args poolInfo[arg1].field_1280, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if sub_e7cb9929 > !(ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint):
                    revert with 0, 17
                sub_e7cb9929 += ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint
                poolInfo[arg1].field_1280 = block.timestamp
        else:
            staticcall distributionAddress.0x170ce579 with:
                    gas gas_remaining wei
                   args poolInfo[arg1].field_512, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint > -1:
                revert with 0, 17
            if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint:
                revert with 0, 17
            if not poolInfo[arg1].field_1024:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024):
                revert with 0, 17
            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024
            poolInfo[arg1].field_512 = block.timestamp
    if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 and poolInfo[arg1].field_768 > -1 / sub_4a7f5504[arg1][msg.sender][4][arg2].field_512:
        revert with 0, 17
    if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[arg1][msg.sender][4][arg2].field_768:
        revert with 0, 17
    if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 and depositFeePercent > -1 / (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768:
        revert with 0, 17
    if not sub_2c686a94:
        revert with 0, 18
    if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 < (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94:
        revert with 0, 17
    if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 - ((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94) <= 0:
        revert with 0, 'Nothing to compound yet'
    if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 and sub_66fa26ee > -1 / (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94:
        revert with 0, 17
    if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 < (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * sub_66fa26ee / 100:
        revert with 0, 17
    if sub_ebea688d > !(((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94) - ((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * sub_66fa26ee / 100)):
        revert with 0, 17
    sub_ebea688d = sub_ebea688d + ((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94) - ((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * sub_66fa26ee / 100)
    if sub_27c60a47[address(msg.sender)] > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * sub_66fa26ee / 100):
        revert with 0, 17
    sub_27c60a47[address(msg.sender)] += (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * sub_66fa26ee / 100
    if sub_f5894c89 > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * sub_66fa26ee / 100):
        revert with 0, 17
    sub_f5894c89 += (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * sub_66fa26ee / 100
    emit 0x40f9135b: (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94, (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * sub_66fa26ee / 100, msg.sender, arg1
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp <= poolInfo[arg1].field_512:
        if not poolInfo[arg1].field_1024:
            if poolInfo[arg1].field_512 > startTimestamp:
                staticcall distributionAddress.0x170ce579 with:
                        gas gas_remaining wei
                       args poolInfo[arg1].field_1280, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if sub_e7cb9929 > !(ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint):
                    revert with 0, 17
                sub_e7cb9929 += ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint
                poolInfo[arg1].field_1280 = poolInfo[arg1].field_512
        else:
            staticcall distributionAddress.0x170ce579 with:
                    gas gas_remaining wei
                   args poolInfo[arg1].field_512, poolInfo[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * sub_66fa26ee / 100):
                revert with 0, 17
            if (ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint) + ((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * sub_66fa26ee / 100) and 1000000000000000000 * 10^18 > -1 / (ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint) + ((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * sub_66fa26ee / 100):
                revert with 0, 17
            if not poolInfo[arg1].field_1024:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !((1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint) + (1000000000000000000 * 10^18 * (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * sub_66fa26ee / 100) / poolInfo[arg1].field_1024):
                revert with 0, 17
            poolInfo[arg1].field_768 += (1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint) + (1000000000000000000 * 10^18 * (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * sub_66fa26ee / 100) / poolInfo[arg1].field_1024
    else:
        if not poolInfo[arg1].field_1024:
            poolInfo[arg1].field_512 = block.timestamp
            if block.timestamp > startTimestamp:
                staticcall distributionAddress.0x170ce579 with:
                        gas gas_remaining wei
                       args poolInfo[arg1].field_1280, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if sub_e7cb9929 > !(ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint):
                    revert with 0, 17
                sub_e7cb9929 += ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint
                poolInfo[arg1].field_1280 = block.timestamp
        else:
            staticcall distributionAddress.0x170ce579 with:
                    gas gas_remaining wei
                   args poolInfo[arg1].field_512, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * sub_66fa26ee / 100):
                revert with 0, 17
            if (ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint) + ((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * sub_66fa26ee / 100) and 1000000000000000000 * 10^18 > -1 / (ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint) + ((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * sub_66fa26ee / 100):
                revert with 0, 17
            if not poolInfo[arg1].field_1024:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !((1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint) + (1000000000000000000 * 10^18 * (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * sub_66fa26ee / 100) / poolInfo[arg1].field_1024):
                revert with 0, 17
            poolInfo[arg1].field_768 += (1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint) + (1000000000000000000 * 10^18 * (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * sub_66fa26ee / 100) / poolInfo[arg1].field_1024
            poolInfo[arg1].field_512 = block.timestamp
    require ext_code.size(distributionAddress)
    call distributionAddress.0xf0dda65c with:
         gas gas_remaining wei
        args this.address, (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 - ((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94)):
        revert with 0, 17
    sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 = sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 - ((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94)
    if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 - ((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94) and poolInfo[arg1].field_768 > -1 / sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 - ((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94):
        revert with 0, 17
    sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 = (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768) + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_768) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * poolInfo[arg1].field_768) - ((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94 * poolInfo[arg1].field_768) / 1000000000000000000 * 10^18
    if sub_4a7f5504[arg1][msg.sender].field_0 > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 - ((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94)):
        revert with 0, 17
    sub_4a7f5504[arg1][msg.sender].field_0 = sub_4a7f5504[arg1][msg.sender].field_0 + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 - ((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94)
    if poolInfo[arg1].field_1024 > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 - ((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94)):
        revert with 0, 17
    poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024 + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 - ((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94)
    emit 0x4daada20: (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 - ((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * depositFeePercent) - (sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 * depositFeePercent) / sub_2c686a94), sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, msg.sender, arg1, arg2
}

function sub_2c39a8a4(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = ('cd', 4).length
        mem[64] = ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 0, 50
                _332 = sha3(mem[(32 * idx) + 140 len 20], sha3(cd[36], 112))
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = sha3(cd[36], 112)
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])].field_0
                s = 0
                while s < stor3[_332]:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if s >= stor3[_332]:
                        revert with 0, 50
                    if cd[36] >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = stor[sha3(_332 + 3) + s]
                    mem[32] = sha3(address(mem[(32 * idx) + 128]), sha3(cd[36], 112)) + 4
                    _494 = sha3(stor[sha3(_332 + 3) + s], sha3(address(mem[(32 * idx) + 128]), sha3(cd[36], 112)) + 4)
                    if stor[sha3(_332 + 3) + s] != sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_332 + 3) + s]].field_0:
                        revert with 0, 'Stake with this id does not exist'
                    if block.timestamp <= poolInfo[cd[36]].field_512:
                        if sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_332 + 3) + s]].field_512 and poolInfo[cd[36]].field_768 > -1 / sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_332 + 3) + s]].field_512:
                            revert with 0, 17
                        if sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_332 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_332 + 3) + s]].field_768:
                            revert with 0, 17
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                            revert with 0, 50
                        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] > !((sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_332 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_332 + 3) + s]].field_768):
                            revert with 0, 17
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] + (sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_332 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_332 + 3) + s]].field_768
                    else:
                        if not poolInfo[cd[36]].field_1024:
                            if sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_332 + 3) + s]].field_512 and poolInfo[cd[36]].field_768 > -1 / sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_332 + 3) + s]].field_512:
                                revert with 0, 17
                            if sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_332 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_332 + 3) + s]].field_768:
                                revert with 0, 17
                            if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                                revert with 0, 50
                            if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] > !((sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_332 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_332 + 3) + s]].field_768):
                                revert with 0, 17
                            if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] + (sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_332 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_332 + 3) + s]].field_768
                        else:
                            mem[mem[64] + 4] = poolInfo[cd[36]].field_512
                            mem[mem[64] + 36] = block.timestamp
                            staticcall distributionAddress.0x170ce579 with:
                                    gas gas_remaining wei
                                   args poolInfo[cd[36]].field_512, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _530 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_530] and poolInfo[cd[36]].field_256 > -1 / mem[_530]:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if mem[_530] * poolInfo[cd[36]].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / mem[_530] * poolInfo[cd[36]].field_256 / totalAllocPoint:
                                revert with 0, 17
                            if not poolInfo[cd[36]].field_1024:
                                revert with 0, 18
                            if poolInfo[cd[36]].field_768 > !(1000000000000000000 * 10^18 * mem[_530] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024):
                                revert with 0, 17
                            if stor2[_494] and poolInfo[cd[36]].field_768 + (1000000000000000000 * 10^18 * mem[_530] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024) > -1 / stor2[_494]:
                                revert with 0, 17
                            if (poolInfo[cd[36]].field_768 * stor2[_494]) + (1000000000000000000 * 10^18 * mem[_530] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024 * stor2[_494]) / 1000000000000000000 * 10^18 < stor3[_494]:
                                revert with 0, 17
                            if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                                revert with 0, 50
                            if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] > !(((poolInfo[cd[36]].field_768 * stor2[_494]) + (1000000000000000000 * 10^18 * mem[_530] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024 * stor2[_494]) / 1000000000000000000 * 10^18) - stor3[_494]):
                                revert with 0, 17
                            if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] + ((poolInfo[cd[36]].field_768 * stor2[_494]) + (1000000000000000000 * 10^18 * mem[_530] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024 * stor2[_494]) / 1000000000000000000 * 10^18) - stor3[_494]
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _330 = mem[64]
            mem[mem[64]] = 64
            _358 = mem[ceil32(32 * ('cd', 4).length) + 97]
            mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 4).length) + 97]
            mem[mem[64] + 96 len 32 * _358] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _358]
            mem[mem[64] + 32] = (32 * _358) + 96
            _482 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            mem[_330 + (32 * _358) + 96] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            mem[_330 + (32 * _358) + 128 len 32 * _482] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * _482]
            var31001 = _482
            return memory
              from mem[64]
               len _330 + (32 * _358) + (32 * _482) + -mem[64] + 128
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _336 = sha3(mem[(32 * idx) + 140 len 20], sha3(cd[36], 112))
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(cd[36], 112)
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])].field_0
            s = 0
            while s < stor3[_336]:
                if idx >= mem[96]:
                    revert with 0, 50
                if s >= stor3[_336]:
                    revert with 0, 50
                if cd[36] >= poolInfo.length:
                    revert with 0, 50
                mem[0] = stor[sha3(_336 + 3) + s]
                mem[32] = sha3(address(mem[(32 * idx) + 128]), sha3(cd[36], 112)) + 4
                _499 = sha3(stor[sha3(_336 + 3) + s], sha3(address(mem[(32 * idx) + 128]), sha3(cd[36], 112)) + 4)
                if stor[sha3(_336 + 3) + s] != sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_336 + 3) + s]].field_0:
                    revert with 0, 'Stake with this id does not exist'
                if block.timestamp <= poolInfo[cd[36]].field_512:
                    if sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_336 + 3) + s]].field_512 and poolInfo[cd[36]].field_768 > -1 / sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_336 + 3) + s]].field_512:
                        revert with 0, 17
                    if sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_336 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_336 + 3) + s]].field_768:
                        revert with 0, 17
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] > !((sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_336 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_336 + 3) + s]].field_768):
                        revert with 0, 17
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] + (sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_336 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_336 + 3) + s]].field_768
                else:
                    if not poolInfo[cd[36]].field_1024:
                        if sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_336 + 3) + s]].field_512 and poolInfo[cd[36]].field_768 > -1 / sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_336 + 3) + s]].field_512:
                            revert with 0, 17
                        if sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_336 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_336 + 3) + s]].field_768:
                            revert with 0, 17
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                            revert with 0, 50
                        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] > !((sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_336 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_336 + 3) + s]].field_768):
                            revert with 0, 17
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] + (sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_336 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_336 + 3) + s]].field_768
                    else:
                        mem[mem[64] + 4] = poolInfo[cd[36]].field_512
                        mem[mem[64] + 36] = block.timestamp
                        staticcall distributionAddress.0x170ce579 with:
                                gas gas_remaining wei
                               args poolInfo[cd[36]].field_512, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _531 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_531] and poolInfo[cd[36]].field_256 > -1 / mem[_531]:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if mem[_531] * poolInfo[cd[36]].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / mem[_531] * poolInfo[cd[36]].field_256 / totalAllocPoint:
                            revert with 0, 17
                        if not poolInfo[cd[36]].field_1024:
                            revert with 0, 18
                        if poolInfo[cd[36]].field_768 > !(1000000000000000000 * 10^18 * mem[_531] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024):
                            revert with 0, 17
                        if stor2[_499] and poolInfo[cd[36]].field_768 + (1000000000000000000 * 10^18 * mem[_531] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024) > -1 / stor2[_499]:
                            revert with 0, 17
                        if (poolInfo[cd[36]].field_768 * stor2[_499]) + (1000000000000000000 * 10^18 * mem[_531] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024 * stor2[_499]) / 1000000000000000000 * 10^18 < stor3[_499]:
                            revert with 0, 17
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                            revert with 0, 50
                        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] > !(((poolInfo[cd[36]].field_768 * stor2[_499]) + (1000000000000000000 * 10^18 * mem[_531] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024 * stor2[_499]) / 1000000000000000000 * 10^18) - stor3[_499]):
                            revert with 0, 17
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] + ((poolInfo[cd[36]].field_768 * stor2[_499]) + (1000000000000000000 * 10^18 * mem[_531] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024 * stor2[_499]) / 1000000000000000000 * 10^18) - stor3[_499]
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _334 = mem[64]
        mem[mem[64]] = 64
        _360 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 96 len 32 * _360] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _360]
        mem[mem[64] + 32] = (32 * _360) + 96
        _484 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        mem[_334 + (32 * _360) + 96] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        mem[_334 + (32 * _360) + 128 len 32 * _484] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * _484]
        return memory
          from mem[64]
           len _334 + (32 * _360) + (32 * _484) + -mem[64] + 128
    mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _340 = sha3(mem[(32 * idx) + 140 len 20], sha3(cd[36], 112))
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(cd[36], 112)
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])].field_0
            s = 0
            while s < stor3[_340]:
                if idx >= mem[96]:
                    revert with 0, 50
                if s >= stor3[_340]:
                    revert with 0, 50
                if cd[36] >= poolInfo.length:
                    revert with 0, 50
                mem[0] = stor[sha3(_340 + 3) + s]
                mem[32] = sha3(address(mem[(32 * idx) + 128]), sha3(cd[36], 112)) + 4
                _504 = sha3(stor[sha3(_340 + 3) + s], sha3(address(mem[(32 * idx) + 128]), sha3(cd[36], 112)) + 4)
                if stor[sha3(_340 + 3) + s] != sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_340 + 3) + s]].field_0:
                    revert with 0, 'Stake with this id does not exist'
                if block.timestamp <= poolInfo[cd[36]].field_512:
                    if sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_340 + 3) + s]].field_512 and poolInfo[cd[36]].field_768 > -1 / sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_340 + 3) + s]].field_512:
                        revert with 0, 17
                    if sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_340 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_340 + 3) + s]].field_768:
                        revert with 0, 17
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] > !((sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_340 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_340 + 3) + s]].field_768):
                        revert with 0, 17
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] + (sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_340 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_340 + 3) + s]].field_768
                else:
                    if not poolInfo[cd[36]].field_1024:
                        if sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_340 + 3) + s]].field_512 and poolInfo[cd[36]].field_768 > -1 / sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_340 + 3) + s]].field_512:
                            revert with 0, 17
                        if sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_340 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_340 + 3) + s]].field_768:
                            revert with 0, 17
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                            revert with 0, 50
                        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] > !((sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_340 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_340 + 3) + s]].field_768):
                            revert with 0, 17
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] + (sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_340 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_340 + 3) + s]].field_768
                    else:
                        mem[mem[64] + 4] = poolInfo[cd[36]].field_512
                        mem[mem[64] + 36] = block.timestamp
                        staticcall distributionAddress.0x170ce579 with:
                                gas gas_remaining wei
                               args poolInfo[cd[36]].field_512, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _532 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_532] and poolInfo[cd[36]].field_256 > -1 / mem[_532]:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if mem[_532] * poolInfo[cd[36]].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / mem[_532] * poolInfo[cd[36]].field_256 / totalAllocPoint:
                            revert with 0, 17
                        if not poolInfo[cd[36]].field_1024:
                            revert with 0, 18
                        if poolInfo[cd[36]].field_768 > !(1000000000000000000 * 10^18 * mem[_532] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024):
                            revert with 0, 17
                        if stor2[_504] and poolInfo[cd[36]].field_768 + (1000000000000000000 * 10^18 * mem[_532] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024) > -1 / stor2[_504]:
                            revert with 0, 17
                        if (poolInfo[cd[36]].field_768 * stor2[_504]) + (1000000000000000000 * 10^18 * mem[_532] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024 * stor2[_504]) / 1000000000000000000 * 10^18 < stor3[_504]:
                            revert with 0, 17
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                            revert with 0, 50
                        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] > !(((poolInfo[cd[36]].field_768 * stor2[_504]) + (1000000000000000000 * 10^18 * mem[_532] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024 * stor2[_504]) / 1000000000000000000 * 10^18) - stor3[_504]):
                            revert with 0, 17
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] + ((poolInfo[cd[36]].field_768 * stor2[_504]) + (1000000000000000000 * 10^18 * mem[_532] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024 * stor2[_504]) / 1000000000000000000 * 10^18) - stor3[_504]
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _338 = mem[64]
        mem[mem[64]] = 64
        _362 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 96 len 32 * _362] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _362]
        mem[mem[64] + 32] = (32 * _362) + 96
        _486 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        mem[_338 + (32 * _362) + 96] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        mem[_338 + (32 * _362) + 128 len 32 * _486] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * _486]
        return memory
          from mem[64]
           len _338 + (32 * _362) + (32 * _486) + -mem[64] + 128
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _344 = sha3(mem[(32 * idx) + 140 len 20], sha3(cd[36], 112))
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(cd[36], 112)
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])].field_0
        s = 0
        while s < stor3[_344]:
            if idx >= mem[96]:
                revert with 0, 50
            if s >= stor3[_344]:
                revert with 0, 50
            if cd[36] >= poolInfo.length:
                revert with 0, 50
            mem[0] = stor[sha3(_344 + 3) + s]
            mem[32] = sha3(address(mem[(32 * idx) + 128]), sha3(cd[36], 112)) + 4
            _509 = sha3(stor[sha3(_344 + 3) + s], sha3(address(mem[(32 * idx) + 128]), sha3(cd[36], 112)) + 4)
            if stor[sha3(_344 + 3) + s] != sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_344 + 3) + s]].field_0:
                revert with 0, 'Stake with this id does not exist'
            if block.timestamp <= poolInfo[cd[36]].field_512:
                if sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_344 + 3) + s]].field_512 and poolInfo[cd[36]].field_768 > -1 / sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_344 + 3) + s]].field_512:
                    revert with 0, 17
                if sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_344 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_344 + 3) + s]].field_768:
                    revert with 0, 17
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] > !((sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_344 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_344 + 3) + s]].field_768):
                    revert with 0, 17
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] + (sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_344 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_344 + 3) + s]].field_768
            else:
                if not poolInfo[cd[36]].field_1024:
                    if sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_344 + 3) + s]].field_512 and poolInfo[cd[36]].field_768 > -1 / sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_344 + 3) + s]].field_512:
                        revert with 0, 17
                    if sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_344 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_344 + 3) + s]].field_768:
                        revert with 0, 17
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] > !((sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_344 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_344 + 3) + s]].field_768):
                        revert with 0, 17
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] + (sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_344 + 3) + s]].field_512 * poolInfo[cd[36]].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[cd[36]][address(mem[(32 * idx) + 128])][4][stor[sha3(_344 + 3) + s]].field_768
                else:
                    mem[mem[64] + 4] = poolInfo[cd[36]].field_512
                    mem[mem[64] + 36] = block.timestamp
                    staticcall distributionAddress.0x170ce579 with:
                            gas gas_remaining wei
                           args poolInfo[cd[36]].field_512, block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _533 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_533] and poolInfo[cd[36]].field_256 > -1 / mem[_533]:
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if mem[_533] * poolInfo[cd[36]].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / mem[_533] * poolInfo[cd[36]].field_256 / totalAllocPoint:
                        revert with 0, 17
                    if not poolInfo[cd[36]].field_1024:
                        revert with 0, 18
                    if poolInfo[cd[36]].field_768 > !(1000000000000000000 * 10^18 * mem[_533] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024):
                        revert with 0, 17
                    if stor2[_509] and poolInfo[cd[36]].field_768 + (1000000000000000000 * 10^18 * mem[_533] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024) > -1 / stor2[_509]:
                        revert with 0, 17
                    if (poolInfo[cd[36]].field_768 * stor2[_509]) + (1000000000000000000 * 10^18 * mem[_533] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024 * stor2[_509]) / 1000000000000000000 * 10^18 < stor3[_509]:
                        revert with 0, 17
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] > !(((poolInfo[cd[36]].field_768 * stor2[_509]) + (1000000000000000000 * 10^18 * mem[_533] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024 * stor2[_509]) / 1000000000000000000 * 10^18) - stor3[_509]):
                        revert with 0, 17
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] + ((poolInfo[cd[36]].field_768 * stor2[_509]) + (1000000000000000000 * 10^18 * mem[_533] * poolInfo[cd[36]].field_256 / totalAllocPoint / poolInfo[cd[36]].field_1024 * stor2[_509]) / 1000000000000000000 * 10^18) - stor3[_509]
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _342 = mem[64]
    mem[mem[64]] = 64
    _364 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 96 len 32 * _364] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _364]
    mem[mem[64] + 32] = (32 * _364) + 96
    _488 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
    mem[_342 + (32 * _364) + 96] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
    mem[_342 + (32 * _364) + 128 len 32 * _488] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * _488]
    return memory
      from mem[64]
       len _342 + (32 * _364) + (32 * _488) + -mem[64] + 128
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if contractState > 1:
        revert with 0, 33
    if contractState:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract is not operating currently'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp < sub_4a7f5504[arg1][msg.sender][4][arg2].field_1024:
        revert with 0, 'Stake is not unlocked yet.'
    if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't withdraw without an existing stake'
    if sub_27681926 > -15:
        revert with 0, 17
    if sub_27681926 + 14 and 24 * 3600 > -1 / sub_27681926 + 14:
        revert with 0, 17
    if block.timestamp < sub_4a7f5504[arg1][msg.sender][4][arg2].field_1024:
        revert with 0, 17
    if sub_27681926 and 24 * 3600 > -1 / sub_27681926:
        revert with 0, 17
    if not (24 * 3600 * sub_27681926) + (336 * 24 * 3600):
        revert with 0, 18
    if block.timestamp - sub_4a7f5504[arg1][msg.sender][4][arg2].field_1024 % (24 * 3600 * sub_27681926) + (336 * 24 * 3600) >= 24 * 3600 * sub_27681926:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can only withdraw during the allowed time window after the unlock'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp <= poolInfo[arg1].field_512:
        if not poolInfo[arg1].field_1024:
            if poolInfo[arg1].field_512 <= startTimestamp:
                if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 and poolInfo[arg1].field_768 > -1 / sub_4a7f5504[arg1][msg.sender][4][arg2].field_512:
                    revert with 0, 17
                if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[arg1][msg.sender][4][arg2].field_768:
                    revert with 0, 17
                if 0 >= poolInfo.length:
                    revert with 0, 50
                mem[100] = this.address
                staticcall erc20Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_ebea688d:
                    revert with 0, 17
                if ext_call.return_data[0] - sub_ebea688d < uint256(poolInfo.field_1024):
                    revert with 0, 17
                if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 <= ext_call.return_data[0] - sub_ebea688d - uint256(poolInfo.field_1024):
                    mem[ceil32(return_data.size) + 100] = msg.sender
                    mem[ceil32(return_data.size) + 132] = (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                    call erc20Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 < ext_call.return_data[0] - sub_ebea688d - uint256(poolInfo.field_1024):
                        revert with 0, 17
                    require ext_code.size(distributionAddress)
                    call distributionAddress.0xf0dda65c with:
                         gas gas_remaining wei
                        args address(this.address), (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 - ext_call.return_data[0] + sub_ebea688d + uint256(poolInfo.field_1024)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 100] = msg.sender
                    mem[ceil32(return_data.size) + 132] = (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                    call erc20Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if paidOut > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768):
                    revert with 0, 17
                paidOut = paidOut + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                if sub_4a7f5504[arg1][msg.sender].field_256 > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768):
                    revert with 0, 17
                sub_4a7f5504[arg1][msg.sender].field_256 = sub_4a7f5504[arg1][msg.sender].field_256 + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                if sub_4a7f5504[arg1][msg.sender].field_0 < sub_4a7f5504[arg1][msg.sender][4][arg2].field_512:
                    revert with 0, 17
                sub_4a7f5504[arg1][msg.sender].field_0 -= sub_4a7f5504[arg1][msg.sender][4][arg2].field_512
                sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 = 0
                if False and poolInfo[arg1].field_768 > 0:
                    revert with 0, 17
                sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 = 0
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 164] = sub_4a7f5504[arg1][msg.sender][4][arg2].field_512
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if not ext_code.size(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call address(poolInfo[arg1].field_0) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                        if not uint32(this.address), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                        if not mem[(2 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[100] = poolInfo[arg1].field_1280
                mem[132] = block.timestamp
                staticcall distributionAddress.0x170ce579 with:
                        gas gas_remaining wei
                       args poolInfo[arg1].field_1280, block.timestamp
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if sub_e7cb9929 > !(ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint):
                    revert with 0, 17
                sub_e7cb9929 += ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint
                poolInfo[arg1].field_1280 = poolInfo[arg1].field_512
                if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 and poolInfo[arg1].field_768 > -1 / sub_4a7f5504[arg1][msg.sender][4][arg2].field_512:
                    revert with 0, 17
                if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[arg1][msg.sender][4][arg2].field_768:
                    revert with 0, 17
                if 0 >= poolInfo.length:
                    revert with 0, 50
                mem[ceil32(return_data.size) + 100] = this.address
                staticcall erc20Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_ebea688d:
                    revert with 0, 17
                if ext_call.return_data[0] - sub_ebea688d < uint256(poolInfo.field_1024):
                    revert with 0, 17
                if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 <= ext_call.return_data[0] - sub_ebea688d - uint256(poolInfo.field_1024):
                    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 132] = (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                    call erc20Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 < ext_call.return_data[0] - sub_ebea688d - uint256(poolInfo.field_1024):
                        revert with 0, 17
                    require ext_code.size(distributionAddress)
                    call distributionAddress.0xf0dda65c with:
                         gas gas_remaining wei
                        args address(this.address), (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 - ext_call.return_data[0] + sub_ebea688d + uint256(poolInfo.field_1024)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 132] = (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                    call erc20Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if paidOut > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768):
                    revert with 0, 17
                paidOut = paidOut + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                if sub_4a7f5504[arg1][msg.sender].field_256 > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768):
                    revert with 0, 17
                sub_4a7f5504[arg1][msg.sender].field_256 = sub_4a7f5504[arg1][msg.sender].field_256 + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                if sub_4a7f5504[arg1][msg.sender].field_0 < sub_4a7f5504[arg1][msg.sender][4][arg2].field_512:
                    revert with 0, 17
                sub_4a7f5504[arg1][msg.sender].field_0 -= sub_4a7f5504[arg1][msg.sender][4][arg2].field_512
                sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 = 0
                if False and poolInfo[arg1].field_768 > 0:
                    revert with 0, 17
                sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 = 0
                mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 164] = sub_4a7f5504[arg1][msg.sender][4][arg2].field_512
                mem[(4 * ceil32(return_data.size)) + 96] = 68
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 196] = 32
                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if not ext_code.size(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, 0
                mem[(4 * ceil32(return_data.size)) + 328] = 0
                call address(poolInfo[arg1].field_0) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(poolInfo[arg1].field_1280), Mask(224, 32, block.timestamp) >> 32 == bool(uint32(poolInfo[arg1].field_1280), Mask(224, 32, block.timestamp) >> 32)
                        if not uint32(poolInfo[arg1].field_1280), Mask(224, 32, block.timestamp) >> 32:
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
        else:
            mem[100] = poolInfo[arg1].field_512
            mem[132] = poolInfo[arg1].field_512
            staticcall distributionAddress.0x170ce579 with:
                    gas gas_remaining wei
                   args poolInfo[arg1].field_512, poolInfo[arg1].field_512
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint > -1:
                revert with 0, 17
            if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint:
                revert with 0, 17
            if not poolInfo[arg1].field_1024:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024):
                revert with 0, 17
            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024
            if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 and poolInfo[arg1].field_768 > -1 / sub_4a7f5504[arg1][msg.sender][4][arg2].field_512:
                revert with 0, 17
            if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[arg1][msg.sender][4][arg2].field_768:
                revert with 0, 17
            if 0 >= poolInfo.length:
                revert with 0, 50
            mem[ceil32(return_data.size) + 100] = this.address
            staticcall erc20Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_ebea688d:
                revert with 0, 17
            if ext_call.return_data[0] - sub_ebea688d < uint256(poolInfo.field_1024):
                revert with 0, 17
            if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 <= ext_call.return_data[0] - sub_ebea688d - uint256(poolInfo.field_1024):
                mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 132] = (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                call erc20Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 < ext_call.return_data[0] - sub_ebea688d - uint256(poolInfo.field_1024):
                    revert with 0, 17
                require ext_code.size(distributionAddress)
                call distributionAddress.0xf0dda65c with:
                     gas gas_remaining wei
                    args address(this.address), (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 - ext_call.return_data[0] + sub_ebea688d + uint256(poolInfo.field_1024)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 132] = (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                call erc20Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if paidOut > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768):
                revert with 0, 17
            paidOut = paidOut + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
            if sub_4a7f5504[arg1][msg.sender].field_256 > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768):
                revert with 0, 17
            sub_4a7f5504[arg1][msg.sender].field_256 = sub_4a7f5504[arg1][msg.sender].field_256 + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
            if sub_4a7f5504[arg1][msg.sender].field_0 < sub_4a7f5504[arg1][msg.sender][4][arg2].field_512:
                revert with 0, 17
            sub_4a7f5504[arg1][msg.sender].field_0 -= sub_4a7f5504[arg1][msg.sender][4][arg2].field_512
            sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 = 0
            if False and poolInfo[arg1].field_768 > 0:
                revert with 0, 17
            sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 = 0
            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 164] = sub_4a7f5504[arg1][msg.sender][4][arg2].field_512
            mem[(4 * ceil32(return_data.size)) + 96] = 68
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 196] = 32
            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(poolInfo[arg1].field_0)):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, 0
            mem[(4 * ceil32(return_data.size)) + 328] = 0
            call address(poolInfo[arg1].field_0) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(poolInfo[arg1].field_512), Mask(224, 0, poolInfo[arg1].field_544) == bool(uint32(poolInfo[arg1].field_512), Mask(224, 0, poolInfo[arg1].field_544))
                    if not uint32(poolInfo[arg1].field_512), Mask(224, 0, poolInfo[arg1].field_544):
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
    else:
        if not poolInfo[arg1].field_1024:
            poolInfo[arg1].field_512 = block.timestamp
            if block.timestamp <= startTimestamp:
                if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 and poolInfo[arg1].field_768 > -1 / sub_4a7f5504[arg1][msg.sender][4][arg2].field_512:
                    revert with 0, 17
                if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[arg1][msg.sender][4][arg2].field_768:
                    revert with 0, 17
                if 0 >= poolInfo.length:
                    revert with 0, 50
                mem[100] = this.address
                staticcall erc20Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_ebea688d:
                    revert with 0, 17
                if ext_call.return_data[0] - sub_ebea688d < uint256(poolInfo.field_1024):
                    revert with 0, 17
                if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 <= ext_call.return_data[0] - sub_ebea688d - uint256(poolInfo.field_1024):
                    mem[ceil32(return_data.size) + 100] = msg.sender
                    mem[ceil32(return_data.size) + 132] = (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                    call erc20Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 < ext_call.return_data[0] - sub_ebea688d - uint256(poolInfo.field_1024):
                        revert with 0, 17
                    require ext_code.size(distributionAddress)
                    call distributionAddress.0xf0dda65c with:
                         gas gas_remaining wei
                        args address(this.address), (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 - ext_call.return_data[0] + sub_ebea688d + uint256(poolInfo.field_1024)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 100] = msg.sender
                    mem[ceil32(return_data.size) + 132] = (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                    call erc20Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if paidOut > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768):
                    revert with 0, 17
                paidOut = paidOut + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                if sub_4a7f5504[arg1][msg.sender].field_256 > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768):
                    revert with 0, 17
                sub_4a7f5504[arg1][msg.sender].field_256 = sub_4a7f5504[arg1][msg.sender].field_256 + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                if sub_4a7f5504[arg1][msg.sender].field_0 < sub_4a7f5504[arg1][msg.sender][4][arg2].field_512:
                    revert with 0, 17
                sub_4a7f5504[arg1][msg.sender].field_0 -= sub_4a7f5504[arg1][msg.sender][4][arg2].field_512
                sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 = 0
                if False and poolInfo[arg1].field_768 > 0:
                    revert with 0, 17
                sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 = 0
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 164] = sub_4a7f5504[arg1][msg.sender][4][arg2].field_512
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if not ext_code.size(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call address(poolInfo[arg1].field_0) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                        if not uint32(this.address), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                        if not mem[(2 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[100] = poolInfo[arg1].field_1280
                mem[132] = block.timestamp
                staticcall distributionAddress.0x170ce579 with:
                        gas gas_remaining wei
                       args poolInfo[arg1].field_1280, block.timestamp
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if sub_e7cb9929 > !(ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint):
                    revert with 0, 17
                sub_e7cb9929 += ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint
                poolInfo[arg1].field_1280 = block.timestamp
                if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 and poolInfo[arg1].field_768 > -1 / sub_4a7f5504[arg1][msg.sender][4][arg2].field_512:
                    revert with 0, 17
                if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[arg1][msg.sender][4][arg2].field_768:
                    revert with 0, 17
                if 0 >= poolInfo.length:
                    revert with 0, 50
                mem[ceil32(return_data.size) + 100] = this.address
                staticcall erc20Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_ebea688d:
                    revert with 0, 17
                if ext_call.return_data[0] - sub_ebea688d < uint256(poolInfo.field_1024):
                    revert with 0, 17
                if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 <= ext_call.return_data[0] - sub_ebea688d - uint256(poolInfo.field_1024):
                    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 132] = (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                    call erc20Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 < ext_call.return_data[0] - sub_ebea688d - uint256(poolInfo.field_1024):
                        revert with 0, 17
                    require ext_code.size(distributionAddress)
                    call distributionAddress.0xf0dda65c with:
                         gas gas_remaining wei
                        args address(this.address), (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 - ext_call.return_data[0] + sub_ebea688d + uint256(poolInfo.field_1024)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 132] = (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                    call erc20Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if paidOut > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768):
                    revert with 0, 17
                paidOut = paidOut + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                if sub_4a7f5504[arg1][msg.sender].field_256 > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768):
                    revert with 0, 17
                sub_4a7f5504[arg1][msg.sender].field_256 = sub_4a7f5504[arg1][msg.sender].field_256 + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                if sub_4a7f5504[arg1][msg.sender].field_0 < sub_4a7f5504[arg1][msg.sender][4][arg2].field_512:
                    revert with 0, 17
                sub_4a7f5504[arg1][msg.sender].field_0 -= sub_4a7f5504[arg1][msg.sender][4][arg2].field_512
                sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 = 0
                if False and poolInfo[arg1].field_768 > 0:
                    revert with 0, 17
                sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 = 0
                mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 164] = sub_4a7f5504[arg1][msg.sender][4][arg2].field_512
                mem[(4 * ceil32(return_data.size)) + 96] = 68
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 196] = 32
                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if not ext_code.size(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, 0
                mem[(4 * ceil32(return_data.size)) + 328] = 0
                call address(poolInfo[arg1].field_0) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(poolInfo[arg1].field_1280), Mask(224, 32, block.timestamp) >> 32 == bool(uint32(poolInfo[arg1].field_1280), Mask(224, 32, block.timestamp) >> 32)
                        if not uint32(poolInfo[arg1].field_1280), Mask(224, 32, block.timestamp) >> 32:
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
        else:
            mem[100] = poolInfo[arg1].field_512
            mem[132] = block.timestamp
            staticcall distributionAddress.0x170ce579 with:
                    gas gas_remaining wei
                   args poolInfo[arg1].field_512, block.timestamp
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and poolInfo[arg1].field_256 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint > -1:
                revert with 0, 17
            if ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint:
                revert with 0, 17
            if not poolInfo[arg1].field_1024:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024):
                revert with 0, 17
            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * ext_call.return_data[0] * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024
            poolInfo[arg1].field_512 = block.timestamp
            if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 and poolInfo[arg1].field_768 > -1 / sub_4a7f5504[arg1][msg.sender][4][arg2].field_512:
                revert with 0, 17
            if sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 < sub_4a7f5504[arg1][msg.sender][4][arg2].field_768:
                revert with 0, 17
            if 0 >= poolInfo.length:
                revert with 0, 50
            mem[ceil32(return_data.size) + 100] = this.address
            staticcall erc20Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_ebea688d:
                revert with 0, 17
            if ext_call.return_data[0] - sub_ebea688d < uint256(poolInfo.field_1024):
                revert with 0, 17
            if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 <= ext_call.return_data[0] - sub_ebea688d - uint256(poolInfo.field_1024):
                mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 132] = (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                call erc20Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 < ext_call.return_data[0] - sub_ebea688d - uint256(poolInfo.field_1024):
                    revert with 0, 17
                require ext_code.size(distributionAddress)
                call distributionAddress.0xf0dda65c with:
                     gas gas_remaining wei
                    args address(this.address), (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 - ext_call.return_data[0] + sub_ebea688d + uint256(poolInfo.field_1024)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 132] = (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                call erc20Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if paidOut > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768):
                revert with 0, 17
            paidOut = paidOut + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
            if sub_4a7f5504[arg1][msg.sender].field_256 > !((sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768):
                revert with 0, 17
            sub_4a7f5504[arg1][msg.sender].field_256 = sub_4a7f5504[arg1][msg.sender].field_256 + (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768
            if sub_4a7f5504[arg1][msg.sender].field_0 < sub_4a7f5504[arg1][msg.sender][4][arg2].field_512:
                revert with 0, 17
            sub_4a7f5504[arg1][msg.sender].field_0 -= sub_4a7f5504[arg1][msg.sender][4][arg2].field_512
            sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 = 0
            if False and poolInfo[arg1].field_768 > 0:
                revert with 0, 17
            sub_4a7f5504[arg1][msg.sender][4][arg2].field_768 = 0
            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 164] = sub_4a7f5504[arg1][msg.sender][4][arg2].field_512
            mem[(4 * ceil32(return_data.size)) + 96] = 68
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 196] = 32
            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(poolInfo[arg1].field_0)):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, 0
            mem[(4 * ceil32(return_data.size)) + 328] = 0
            call address(poolInfo[arg1].field_0) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(poolInfo[arg1].field_512), Mask(224, 32, block.timestamp) >> 32 == bool(uint32(poolInfo[arg1].field_512), Mask(224, 32, block.timestamp) >> 32)
                    if not uint32(poolInfo[arg1].field_512), Mask(224, 32, block.timestamp) >> 32:
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
    if poolInfo[arg1].field_1024 < sub_4a7f5504[arg1][msg.sender][4][arg2].field_512:
        revert with 0, 17
    poolInfo[arg1].field_1024 -= sub_4a7f5504[arg1][msg.sender][4][arg2].field_512
    if not poolInfo[arg1].field_1024 - sub_4a7f5504[arg1][msg.sender][4][arg2].field_512:
        if block.timestamp > startTimestamp:
            poolInfo[arg1].field_1280 = block.timestamp
    if sub_4a7f5504[arg1][msg.sender].field_768 < 1:
        revert with 0, 17
    if sub_4a7f5504[arg1][msg.sender].field_768 - 1 >= sub_4a7f5504[arg1][msg.sender].field_768:
        revert with 0, 50
    if sub_4a7f5504[arg1][msg.sender][4][arg2].field_256 >= sub_4a7f5504[arg1][msg.sender].field_768:
        revert with 0, 50
    stor[('array', 3, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'sub_4a7f5504', 112)))) + sub_4a7f5504[arg1][msg.sender][4][arg2].field_256].field_0 = stor[('array', 3, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'sub_4a7f5504', 112)))) + sub_4a7f5504[arg1][msg.sender].field_768].field_0
    if not sub_4a7f5504[arg1][msg.sender].field_768:
        revert with 0, 49
    stor[sub_4a7f5504[arg1][msg.sender].field_768 + ('array', 3, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'sub_4a7f5504', 112))))].field_0 = 0
    sub_4a7f5504[arg1][msg.sender].field_768--
    sub_4a7f5504[arg1][msg.sender][4][stor[('array', 3, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'sub_4a7f5504', 112)))) + sub_4a7f5504[arg1][msg.sender].field_768].field_0].field_256 = sub_4a7f5504[arg1][msg.sender][4][arg2].field_256
    sub_4a7f5504[arg1][msg.sender][4][sub_4a7f5504[arg1][msg.sender][4][arg2].field_0].field_0 = 0
    sub_4a7f5504[arg1][msg.sender][4][sub_4a7f5504[arg1][msg.sender][4][arg2].field_0].field_256 = 0
    sub_4a7f5504[arg1][msg.sender][4][sub_4a7f5504[arg1][msg.sender][4][arg2].field_0].field_512 = 0
    sub_4a7f5504[arg1][msg.sender][4][sub_4a7f5504[arg1][msg.sender][4][arg2].field_0].field_768 = 0
    sub_4a7f5504[arg1][msg.sender][4][sub_4a7f5504[arg1][msg.sender][4][arg2].field_0].field_1024 = 0
    sub_4a7f5504[arg1][msg.sender][4][sub_4a7f5504[arg1][msg.sender][4][arg2].field_0].field_1280 = 0
    emit Withdraw(sub_4a7f5504[arg1][msg.sender][4][arg2].field_512, (sub_4a7f5504[arg1][msg.sender][4][arg2].field_512 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - sub_4a7f5504[arg1][msg.sender][4][arg2].field_768, msg.sender, arg1, arg2);
}



}
