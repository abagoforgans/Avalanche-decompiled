contract main {




// =====================  Runtime code  =====================


#
#  - investToIVs(address[] arg1, uint256[] arg2)
#  - withdraw(uint256 arg1)
#  - investTo(address arg1, uint256 arg2)
#  - migrateFunds(address arg1, address arg2, uint256 arg3, uint256 arg4)
#  - investAll()
#
const SHARE_UNIT = 10^18

const BPS_UNIT = 10000


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address baseAssetAddress;
mapping of struct vInfo;
array of struct investmentVehicle;
mapping of uint256 stor104;
array of struct stor105;
mapping of uint256 stor106;
uint128 stor23BD; offset 160
address storeAddress;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function getInvestmentVehicle(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= investmentVehicle.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return investmentVehicle[arg1].field_0
}

function vInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return vInfo[arg1].field_0, bool(vInfo[arg1].field_256), vInfo[arg1].field_512, vInfo[arg1].field_768
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function investmentVehiclesLength() payable {
    return investmentVehicle.length
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function store() payable {
    return storeAddress
}

function baseAssetDebtOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return vInfo[address(arg1)].field_0
}

function isWhitelistDeposit(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor106[address(arg1)])
}

function baseAsset() payable {
    return baseAssetAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function isDebtor(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor104[address(arg1)])
}

function _fallback() payable {
    revert
}

function treasury() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x61d027b3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function registry() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x7b103999 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function governance() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function swapCenter() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xce41fdc3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x24d7806c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x6d70f7ae with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function storageFetchUint256(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x426e56f8 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function storageFetchBool(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x3b7bfda0 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function storageFetchAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.addressStorage(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function storageFetchUint256InArray(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xd85338db with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function storageFetchBoolInArray(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xa203e8cc with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function storageFetchAddressInArray(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x36cb6592 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if storeAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6553746f726167655631436f6e73756d65725570677261646561626c653a20496e697469616c697a65,
                    mem[205 len 23]
    storeAddress = arg1
    stor23BD = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7245524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function addWhitelistDeposit(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6453746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d69,
                        mem[217 len 11]
    if not stor106[address(arg1)]:
        stor105.length++
        stor105[stor105.length].field_0 = arg1
        stor105[stor105.length].field_160 = 0
        stor106[address(arg1)] = stor105.length
}

function removeWhitelistDeposit(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6453746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d69,
                        mem[217 len 11]
    if stor106[address(arg1)]:
        require stor105.length - 1 < stor105.length
        require stor106[address(arg1)] - 1 < stor105.length
        stor105[stor106[address(arg1)]].field_0 = stor105[stor105.length].field_0
        stor106[stor105[stor105.length].field_0] = stor106[address(arg1)]
        require stor105.length
        stor105[stor105.length].field_0 = 0
        stor105.length--
        stor106[address(arg1)] = 0
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
    if storeAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6553746f726167655631436f6e73756d65725570677261646561626c653a20496e697469616c697a65,
                    mem[205 len 23]
    storeAddress = arg1
    stor23BD = 0
    if uint8(stor0.field_8):
        baseAssetAddress = arg2
    else:
        uint8(stor0.field_8) = 0
        baseAssetAddress = arg2
        uint8(stor0.field_8) = 0
}

function baseAssetInvested() payable {
    mem[64] = 96
    if var29002 >= investmentVehicle.length:
        return var29003
    if var35001 >= investmentVehicle.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require var37002 < investmentVehicle.length
    mem[0] = 103
    mem[96] = 0x25c2f75300000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(address(var43001))
    staticcall var45002.mem[var45003 len 4] with:
            gas gas_remaining wei
           args mem[var45003 + 4 len var45004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 96
    s = var47006
    s = var47007
    t = var47008
    while t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 >= t:
        if s + 1 >= investmentVehicle.length:
            return (t + 0x25c2f75300000000000000000000000000000000000000000000000000000000)
        mem[0] = 103
        mem[100] = this.address
        require ext_code.size(investmentVehicle[s].field_256)
        staticcall investmentVehicle[s].field_256.baseAssetBalanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = 96
        s = investmentVehicle[s].field_256
        s = s + 1
        t = ext_call.return_data[0] + t
        continue 
    revert with 0, 'SafeMath: addition overflow'
}

function moveInvestmentVehicleToLowestPriority(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6453746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d69,
                        mem[217 len 11]
    require stor104[address(arg1)]
    if stor104[address(arg1)]:
        require investmentVehicle.length - 1 < investmentVehicle.length
        require stor104[address(arg1)] - 1 < investmentVehicle.length
        investmentVehicle[stor104[address(arg1)]].field_0 = investmentVehicle[investmentVehicle.length].field_0
        stor104[stor103[stor103.length].field_0] = stor104[address(arg1)]
        require investmentVehicle.length
        investmentVehicle[investmentVehicle.length].field_0 = 0
        investmentVehicle.length--
        stor104[address(arg1)] = 0
    if not stor104[address(arg1)]:
        investmentVehicle.length++
        investmentVehicle[investmentVehicle.length].field_0 = arg1
        investmentVehicle[investmentVehicle.length].field_160 = 0
        stor104[address(arg1)] = investmentVehicle.length
}

function removeInvestmentVehicle(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6453746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d69,
                        mem[217 len 11]
    if vInfo[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6563616e6e6f742072656d6f76652076656869636c652077697468206e6f6e5a65726f20646562,
                    mem[203 len 25]
    if stor104[address(arg1)]:
        require investmentVehicle.length - 1 < investmentVehicle.length
        require stor104[address(arg1)] - 1 < investmentVehicle.length
        investmentVehicle[stor104[address(arg1)]].field_0 = investmentVehicle[investmentVehicle.length].field_0
        stor104[stor103[stor103.length].field_0] = stor104[address(arg1)]
        require investmentVehicle.length
        investmentVehicle[investmentVehicle.length].field_0 = 0
        investmentVehicle.length--
        stor104[address(arg1)] = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7245524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function totalBaseAsset() payable {
    mem[64] = 96
    require ext_code.size(baseAssetAddress)
    staticcall baseAssetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var33002 >= investmentVehicle.length:
        if ext_call.return_data[0] + var33003 < var33003:
            revert with 0, 'SafeMath: addition overflow'
        return (ext_call.return_data[0] + var33003)
    if var39001 >= investmentVehicle.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require var41002 < investmentVehicle.length
    mem[0] = 103
    mem[96] = 0x25c2f75300000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(address(var47001))
    staticcall var49002.mem[var49003 len 4] with:
            gas gas_remaining wei
           args mem[var49003 + 4 len var49004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 96
    s = var51006
    s = var51007
    t = var51008
    while t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 >= t:
        if s + 1 >= investmentVehicle.length:
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000)
        mem[0] = 103
        mem[100] = this.address
        require ext_code.size(investmentVehicle[s].field_256)
        staticcall investmentVehicle[s].field_256.baseAssetBalanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = 96
        s = investmentVehicle[s].field_256
        s = s + 1
        t = ext_call.return_data[0] + t
        continue 
    revert with 0, 'SafeMath: addition overflow'
}

function withdrawFromIV(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(storeAddress)
            staticcall storeAddress.0x6d70f7ae with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            65,
                            0x7353746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d696e206f72206f70657261746f,
                            mem[229 len 31]
    require ext_code.size(baseAssetAddress)
    staticcall baseAssetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.withdrawAsCreditor(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(baseAssetAddress)
    staticcall baseAssetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if 0 > vInfo[address(arg1)].field_0:
        vInfo[address(arg1)].field_0 = 0
    else:
        if 0 > vInfo[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
}

function withdrawAllFromIV(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(storeAddress)
            staticcall storeAddress.0x6d70f7ae with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            65,
                            0x7353746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d696e206f72206f70657261746f,
                            mem[229 len 31]
    require ext_code.size(baseAssetAddress)
    staticcall baseAssetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.withdrawAsCreditor(uint256 arg1) with:
         gas gas_remaining wei
        args vInfo[address(arg1)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(baseAssetAddress)
    staticcall baseAssetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if 0 > vInfo[address(arg1)].field_0:
        vInfo[address(arg1)].field_0 = 0
    else:
        if 0 > vInfo[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
}

function addInvestmentVehicle(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(storeAddress)
    if ext_call.return_data[12 len 20] != msg.sender:
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x6453746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d69,
                        mem[217 len 11]
    staticcall storeAddress.0x7b103999 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20]:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x7b103999 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).vaultTimelockEnabled(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(storeAddress)
            staticcall storeAddress.0x7b103999 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).isIVActiveForVault(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Vault: IV not available yet'
    if stor104[address(arg1)]:
        revert with 0, 'vehicle already registered'
    vInfo[address(arg1)].field_0 = 0
    vInfo[address(arg1)].field_256 = 0
    vInfo[address(arg1)].field_512 = arg2
    vInfo[address(arg1)].field_768 = arg3
    if not stor104[address(arg1)]:
        investmentVehicle.length++
        investmentVehicle[investmentVehicle.length].field_0 = arg1
        investmentVehicle[investmentVehicle.length].field_160 = 0
        stor104[address(arg1)] = investmentVehicle.length
        return 0
    else:
        return 0
}

function sharePrice() payable {
    mem[64] = 96
    if not totalSupply:
        return 10^18
    require ext_code.size(baseAssetAddress)
    staticcall baseAssetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var39002 >= investmentVehicle.length:
        if ext_call.return_data[0] + var39003 < var39003:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0] + var39003:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return (0 / totalSupply)
        if (10^18 * ext_call.return_data[0]) + (10^18 * var39003) / ext_call.return_data[0] + var39003 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        return ((10^18 * ext_call.return_data[0]) + (10^18 * var39003) / totalSupply)
    if var45001 >= investmentVehicle.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require var47002 < investmentVehicle.length
    mem[0] = 103
    mem[96] = 0x25c2f75300000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(address(var53001))
    staticcall var55002.mem[var55003 len 4] with:
            gas gas_remaining wei
           args mem[var55003 + 4 len var55004 - 4]
    mem[var55005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 96
    s = var57006
    s = var57007
    t = var57008
    while t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 >= t:
        if s + 1 >= investmentVehicle.length:
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000:
                if totalSupply:
                    return (0 / totalSupply)
            else:
                if (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 != 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if totalSupply:
                    return ((10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply)
            ('iszero', ('stor', ('name', 'totalSupply', 53)))
            mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[164] = 32
            idx = 32
            while idx < 26:
                mem[idx + 228] = mem[idx + 128]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: division by zero'
        mem[0] = 103
        mem[100] = this.address
        require ext_code.size(investmentVehicle[s].field_256)
        staticcall investmentVehicle[s].field_256.baseAssetBalanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = 96
        s = investmentVehicle[s].field_256
        s = s + 1
        t = ext_call.return_data[0] + t
        continue 
    revert with 0, 'SafeMath: addition overflow'
}

function shareToBaseAsset(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if not totalSupply:
        if not arg1:
            return 0
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (10^18 * arg1 / 10^18)
    require ext_code.size(baseAssetAddress)
    staticcall baseAssetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var41002 >= investmentVehicle.length:
        if ext_call.return_data[0] + var41003 < var41003:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0] + var41003:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                return 0
            if 0 / totalSupply * arg1 / arg1 != 0 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            return (0 / totalSupply * arg1 / 10^18)
        if (10^18 * ext_call.return_data[0]) + (10^18 * var41003) / ext_call.return_data[0] + var41003 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            return 0
        if (10^18 * ext_call.return_data[0]) + (10^18 * var41003) / totalSupply * arg1 / arg1 != (10^18 * ext_call.return_data[0]) + (10^18 * var41003) / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((10^18 * ext_call.return_data[0]) + (10^18 * var41003) / totalSupply * arg1 / 10^18)
    if var47001 >= investmentVehicle.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require var49002 < investmentVehicle.length
    mem[0] = 103
    mem[96] = 0x25c2f75300000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(address(var55001))
    staticcall var57002.mem[var57003 len 4] with:
            gas gas_remaining wei
           args mem[var57003 + 4 len var57004 - 4]
    mem[var57005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 96
    s = var59006
    s = var59007
    t = var59008
    while t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 >= t:
        if s + 1 >= investmentVehicle.length:
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000:
                if totalSupply:
                    if not arg1:
                        return 0
                    if 0 / totalSupply * arg1 / arg1 != 0 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    return (0 / totalSupply * arg1 / 10^18)
            else:
                if (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 != 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if totalSupply:
                    if not arg1:
                        return 0
                    if (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply * arg1 / arg1 != (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    return ((10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply * arg1 / 10^18)
            ('iszero', ('stor', ('name', 'totalSupply', 53)))
            mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[164] = 32
            idx = 32
            while idx < 26:
                mem[idx + 228] = mem[idx + 128]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: division by zero'
        mem[0] = 103
        mem[100] = this.address
        require ext_code.size(investmentVehicle[s].field_256)
        staticcall investmentVehicle[s].field_256.baseAssetBalanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = 96
        s = investmentVehicle[s].field_256
        s = s + 1
        t = ext_call.return_data[0] + t
        continue 
    revert with 0, 'SafeMath: addition overflow'
}

function baseAssetToShare(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if not totalSupply:
        if not arg1:
            return 0
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (10^18 * arg1 / 10^18)
    require ext_code.size(baseAssetAddress)
    staticcall baseAssetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var41002 >= investmentVehicle.length:
        if ext_call.return_data[0] + var41003 < var41003:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0] + var41003:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not 0 / totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / 0 / totalSupply)
            if 10^18 * arg1 / arg1 != 10^18:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not 0 / totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return (10^18 * arg1 / 0 / totalSupply)
        if (10^18 * ext_call.return_data[0]) + (10^18 * var41003) / ext_call.return_data[0] + var41003 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if not (10^18 * ext_call.return_data[0]) + (10^18 * var41003) / totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return (0 / (10^18 * ext_call.return_data[0]) + (10^18 * var41003) / totalSupply)
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (10^18 * ext_call.return_data[0]) + (10^18 * var41003) / totalSupply:
            revert with 0, 'SafeMath: division by zero'
        return (10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * var41003) / totalSupply)
    if var47001 >= investmentVehicle.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require var49002 < investmentVehicle.length
    mem[0] = 103
    mem[96] = 0x25c2f75300000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(address(var55001))
    staticcall var57002.mem[var57003 len 4] with:
            gas gas_remaining wei
           args mem[var57003 + 4 len var57004 - 4]
    mem[var57005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 96
    s = var59006
    s = var59007
    t = var59008
    while t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 >= t:
        if s + 1 < investmentVehicle.length:
            mem[0] = 103
            mem[100] = this.address
            require ext_code.size(investmentVehicle[s].field_256)
            staticcall investmentVehicle[s].field_256.baseAssetBalanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = 96
            s = investmentVehicle[s].field_256
            s = s + 1
            t = ext_call.return_data[0] + t
            continue 
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000:
            if not totalSupply:
                mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[164] = 32
                idx = 32
                while idx < 26:
                    mem[idx + 228] = mem[idx + 128]
                    idx = idx + 32
                    continue 
            else:
                if not arg1:
                    if 0 / totalSupply:
                        return (0 / 0 / totalSupply)
                else:
                    if 10^18 * arg1 / arg1 != 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if 0 / totalSupply:
                        return (10^18 * arg1 / 0 / totalSupply)
                ('iszero', ('div', 0, ('stor', ('name', 'totalSupply', 53))))
                mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[228] = 32
                idx = 32
                while idx < 26:
                    mem[idx + 292] = mem[idx + 192]
                    idx = idx + 32
                    continue 
        else:
            if (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 != 10^18:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if not totalSupply:
                mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[164] = 32
                idx = 32
                while idx < 26:
                    mem[idx + 228] = mem[idx + 128]
                    idx = idx + 32
                    continue 
            else:
                if not arg1:
                    if (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply:
                        return (0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply)
                else:
                    if 10^18 * arg1 / arg1 != 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply:
                        return (10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply)
                ('iszero', ('div', ('add', 87487199259566478463646559046786353229713692637693148330349452663205360828416, ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('mul', 1000000000000000000, ('var', 2))), ('stor', ('name', 'totalSupply', 53))))
                mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[228] = 32
                idx = 32
                while idx < 26:
                    mem[idx + 292] = mem[idx + 192]
                    idx = idx + 32
                    continue 
        revert with 0, 'SafeMath: division by zero'
    revert with 0, 'SafeMath: addition overflow'
}

function effectiveLendCapacity(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[32] = 102
    if not totalSupply:
        if vInfo[address(arg1)].field_768 < 0:
            return vInfo[address(arg1)].field_768
        else:
            return 0
    require ext_code.size(baseAssetAddress)
    staticcall baseAssetAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var41002 >= investmentVehicle.length:
        if ext_call.return_data[0] + var41003 < var41003:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0] + var41003:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if 0 / totalSupply * totalSupply / totalSupply != 0 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not 0 / totalSupply * totalSupply / 10^18:
                if vInfo[address(arg1)].field_768 < 0:
                    return vInfo[address(arg1)].field_768
                else:
                    return 0
            if vInfo[address(arg1)].field_512 * 0 / totalSupply * totalSupply / 10^18 / 0 / totalSupply * totalSupply / 10^18 != vInfo[address(arg1)].field_512:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if vInfo[address(arg1)].field_768 < vInfo[address(arg1)].field_512 * 0 / totalSupply * totalSupply / 10^18 / 10000:
                return vInfo[address(arg1)].field_768
            return (vInfo[address(arg1)].field_512 * 0 / totalSupply * totalSupply / 10^18 / 10000)
        if (10^18 * ext_call.return_data[0]) + (10^18 * var41003) / ext_call.return_data[0] + var41003 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * ext_call.return_data[0]) + (10^18 * var41003) / totalSupply * totalSupply / totalSupply != (10^18 * ext_call.return_data[0]) + (10^18 * var41003) / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (10^18 * ext_call.return_data[0]) + (10^18 * var41003) / totalSupply * totalSupply / 10^18:
            if vInfo[address(arg1)].field_768 < 0:
                return vInfo[address(arg1)].field_768
            else:
                return 0
        if vInfo[address(arg1)].field_512 * (10^18 * ext_call.return_data[0]) + (10^18 * var41003) / totalSupply * totalSupply / 10^18 / (10^18 * ext_call.return_data[0]) + (10^18 * var41003) / totalSupply * totalSupply / 10^18 != vInfo[address(arg1)].field_512:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if vInfo[address(arg1)].field_768 < vInfo[address(arg1)].field_512 * (10^18 * ext_call.return_data[0]) + (10^18 * var41003) / totalSupply * totalSupply / 10^18 / 10000:
            return vInfo[address(arg1)].field_768
        return (vInfo[address(arg1)].field_512 * (10^18 * ext_call.return_data[0]) + (10^18 * var41003) / totalSupply * totalSupply / 10^18 / 10000)
    if var47001 >= investmentVehicle.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require var49002 < investmentVehicle.length
    mem[0] = 103
    mem[96] = 0x25c2f75300000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(address(var55001))
    staticcall var57002.mem[var57003 len 4] with:
            gas gas_remaining wei
           args mem[var57003 + 4 len var57004 - 4]
    mem[var57005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 96
    s = var59006
    s = var59007
    t = var59008
    while t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 >= t:
        if s + 1 < investmentVehicle.length:
            mem[0] = 103
            mem[100] = this.address
            require ext_code.size(investmentVehicle[s].field_256)
            staticcall investmentVehicle[s].field_256.baseAssetBalanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = 96
            s = investmentVehicle[s].field_256
            s = s + 1
            t = ext_call.return_data[0] + t
            continue 
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000:
            if not totalSupply:
                mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[164] = 32
                idx = 32
                while idx < 26:
                    mem[idx + 228] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if 0 / totalSupply * totalSupply / totalSupply != 0 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not 0 / totalSupply * totalSupply / 10^18:
                if vInfo[address(arg1)].field_768 < 0:
                    return vInfo[address(arg1)].field_768
                else:
                    return 0
            if vInfo[address(arg1)].field_512 * 0 / totalSupply * totalSupply / 10^18 / 0 / totalSupply * totalSupply / 10^18 != vInfo[address(arg1)].field_512:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if vInfo[address(arg1)].field_768 < vInfo[address(arg1)].field_512 * 0 / totalSupply * totalSupply / 10^18 / 10000:
                return vInfo[address(arg1)].field_768
            return (vInfo[address(arg1)].field_512 * 0 / totalSupply * totalSupply / 10^18 / 10000)
        if (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 != 10^18:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        if not totalSupply:
            mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[164] = 32
            idx = 32
            while idx < 26:
                mem[idx + 228] = mem[idx + 128]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply * totalSupply / totalSupply != (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply * totalSupply / 10^18:
            if vInfo[address(arg1)].field_768 < 0:
                return vInfo[address(arg1)].field_768
            else:
                return 0
        if vInfo[address(arg1)].field_512 * (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply * totalSupply / 10^18 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply * totalSupply / 10^18 != vInfo[address(arg1)].field_512:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if vInfo[address(arg1)].field_768 < vInfo[address(arg1)].field_512 * (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply * totalSupply / 10^18 / 10000:
            return vInfo[address(arg1)].field_768
        return (vInfo[address(arg1)].field_512 * (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply * totalSupply / 10^18 / 10000)
    revert with 0, 'SafeMath: addition overflow'
}

function withdrawAllFromIVs(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.sender == ext_call.return_data[12 len 20]:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _133 = mem[(32 * idx) + 128]
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 102
            mem[mem[64] + 4] = this.address
            require ext_code.size(baseAssetAddress)
            staticcall baseAssetAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64]] = 0x3b6bf4d800000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_133))
            call address(_133).withdrawAsCreditor(uint256 arg1) with:
                 gas gas_remaining wei
                args vInfo[mem[0]].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(baseAssetAddress)
            staticcall baseAssetAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _178 = mem[64]
            mem[64] = mem[64] + 64
            mem[_178] = 30
            mem[_178 + 32] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > ext_call.return_data[0]:
                _181 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _181 + 68] = mem[idx + _178 + 32]
                    idx = idx + 32
                    continue 
                mem[_181 + 68] = mem[_181 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _181 + -mem[64] + 100
            mem[0] = address(_133)
            mem[32] = 102
            if 0 > vInfo[address(_133)].field_0:
                vInfo[address(_133)].field_0 = 0
                idx = idx + 1
                continue 
            _211 = mem[64]
            mem[64] = mem[64] + 64
            mem[_211] = 30
            mem[_211 + 32] = 'SafeMath: subtraction overflow'
            if 0 <= vInfo[address(_133)].field_0:
                mem[0] = address(_133)
                mem[32] = 102
                idx = idx + 1
                continue 
            _214 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _214 + 68] = mem[idx + _211 + 32]
                idx = idx + 32
                continue 
            mem[_214 + 68] = mem[_214 + 70 len 30]
            revert with memory
              from mem[64]
               len _214 + -mem[64] + 100
    else:
        mem[(32 * arg1.length) + 132] = msg.sender
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                _135 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 102
                mem[mem[64] + 4] = this.address
                require ext_code.size(baseAssetAddress)
                staticcall baseAssetAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x3b6bf4d800000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_135))
                call address(_135).withdrawAsCreditor(uint256 arg1) with:
                     gas gas_remaining wei
                    args vInfo[mem[0]].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(baseAssetAddress)
                staticcall baseAssetAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _179 = mem[64]
                mem[64] = mem[64] + 64
                mem[_179] = 30
                mem[_179 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    _184 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _184 + 68] = mem[idx + _179 + 32]
                        idx = idx + 32
                        continue 
                    mem[_184 + 68] = mem[_184 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _184 + -mem[64] + 100
                mem[0] = address(_135)
                mem[32] = 102
                if 0 > vInfo[address(_135)].field_0:
                    vInfo[address(_135)].field_0 = 0
                    idx = idx + 1
                    continue 
                _212 = mem[64]
                mem[64] = mem[64] + 64
                mem[_212] = 30
                mem[_212 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= vInfo[address(_135)].field_0:
                    mem[0] = address(_135)
                    mem[32] = 102
                    idx = idx + 1
                    continue 
                _217 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _217 + 68] = mem[idx + _212 + 32]
                    idx = idx + 32
                    continue 
                mem[_217 + 68] = mem[_217 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _217 + -mem[64] + 100
        else:
            mem[(32 * arg1.length) + 132] = msg.sender
            require ext_code.size(storeAddress)
            staticcall storeAddress.0x6d70f7ae with:
                    gas gas_remaining wei
                   args msg.sender
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            65,
                            0x7353746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d696e206f72206f70657261746f,
                            mem[(32 * arg1.length) + 261 len 31]
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                _137 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 102
                mem[mem[64] + 4] = this.address
                require ext_code.size(baseAssetAddress)
                staticcall baseAssetAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64]] = 0x3b6bf4d800000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_137))
                call address(_137).withdrawAsCreditor(uint256 arg1) with:
                     gas gas_remaining wei
                    args vInfo[mem[0]].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(baseAssetAddress)
                staticcall baseAssetAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _180 = mem[64]
                mem[64] = mem[64] + 64
                mem[_180] = 30
                mem[_180 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    _187 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _187 + 68] = mem[idx + _180 + 32]
                        idx = idx + 32
                        continue 
                    mem[_187 + 68] = mem[_187 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _187 + -mem[64] + 100
                mem[0] = address(_137)
                mem[32] = 102
                if 0 > vInfo[address(_137)].field_0:
                    vInfo[address(_137)].field_0 = 0
                    idx = idx + 1
                    continue 
                _213 = mem[64]
                mem[64] = mem[64] + 64
                mem[_213] = 30
                mem[_213 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= vInfo[address(_137)].field_0:
                    mem[0] = address(_137)
                    mem[32] = 102
                    idx = idx + 1
                    continue 
                _220 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _220 + 68] = mem[idx + _213 + 32]
                    idx = idx + 32
                    continue 
                mem[_220 + 68] = mem[_220 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _220 + -mem[64] + 100
}

function withdrawFromIVs(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.sender == ext_call.return_data[12 len 20]:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _131 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            require ext_code.size(baseAssetAddress)
            staticcall baseAssetAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].withdrawAsCreditor(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[(32 * idx) + (32 * arg1.length) + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(baseAssetAddress)
            staticcall baseAssetAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _173 = mem[64]
            mem[64] = mem[64] + 64
            mem[_173] = 30
            mem[_173 + 32] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > ext_call.return_data[0]:
                _176 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _176 + 68] = mem[idx + _173 + 32]
                    idx = idx + 32
                    continue 
                mem[_176 + 68] = mem[_176 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _176 + -mem[64] + 100
            mem[0] = address(_131)
            mem[32] = 102
            if 0 > vInfo[address(_131)].field_0:
                vInfo[address(_131)].field_0 = 0
                idx = idx + 1
                continue 
            _206 = mem[64]
            mem[64] = mem[64] + 64
            mem[_206] = 30
            mem[_206 + 32] = 'SafeMath: subtraction overflow'
            if 0 <= vInfo[address(_131)].field_0:
                mem[0] = address(_131)
                mem[32] = 102
                idx = idx + 1
                continue 
            _209 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _209 + 68] = mem[idx + _206 + 32]
                idx = idx + 32
                continue 
            mem[_209 + 68] = mem[_209 + 70 len 30]
            revert with memory
              from mem[64]
               len _209 + -mem[64] + 100
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x24d7806c with:
                gas gas_remaining wei
               args msg.sender
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                _133 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg1.length) + 128]
                require ext_code.size(baseAssetAddress)
                staticcall baseAssetAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].withdrawAsCreditor(uint256 arg1) with:
                     gas gas_remaining wei
                    args mem[(32 * idx) + (32 * arg1.length) + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(baseAssetAddress)
                staticcall baseAssetAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _174 = mem[64]
                mem[64] = mem[64] + 64
                mem[_174] = 30
                mem[_174 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    _179 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _179 + 68] = mem[idx + _174 + 32]
                        idx = idx + 32
                        continue 
                    mem[_179 + 68] = mem[_179 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _179 + -mem[64] + 100
                mem[0] = address(_133)
                mem[32] = 102
                if 0 > vInfo[address(_133)].field_0:
                    vInfo[address(_133)].field_0 = 0
                    idx = idx + 1
                    continue 
                _207 = mem[64]
                mem[64] = mem[64] + 64
                mem[_207] = 30
                mem[_207 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= vInfo[address(_133)].field_0:
                    mem[0] = address(_133)
                    mem[32] = 102
                    idx = idx + 1
                    continue 
                _212 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _212 + 68] = mem[idx + _207 + 32]
                    idx = idx + 32
                    continue 
                mem[_212 + 68] = mem[_212 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _212 + -mem[64] + 100
        else:
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
            require ext_code.size(storeAddress)
            staticcall storeAddress.0x6d70f7ae with:
                    gas gas_remaining wei
                   args msg.sender
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            65,
                            0x7353746f726167655631436f6e73756d65725570677261646561626c653a206e6f7420676f7665726e616e6365206f722061646d696e206f72206f70657261746f,
                            mem[(32 * arg1.length) + (32 * arg2.length) + 293 len 31]
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                _135 = mem[(32 * idx) + 128]
                require idx < mem[(32 * arg1.length) + 128]
                require ext_code.size(baseAssetAddress)
                staticcall baseAssetAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                call mem[(32 * idx) + 140 len 20].withdrawAsCreditor(uint256 arg1) with:
                     gas gas_remaining wei
                    args mem[(32 * idx) + (32 * arg1.length) + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(baseAssetAddress)
                staticcall baseAssetAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _175 = mem[64]
                mem[64] = mem[64] + 64
                mem[_175] = 30
                mem[_175 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    _182 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _182 + 68] = mem[idx + _175 + 32]
                        idx = idx + 32
                        continue 
                    mem[_182 + 68] = mem[_182 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _182 + -mem[64] + 100
                mem[0] = address(_135)
                mem[32] = 102
                if 0 > vInfo[address(_135)].field_0:
                    vInfo[address(_135)].field_0 = 0
                    idx = idx + 1
                    continue 
                _208 = mem[64]
                mem[64] = mem[64] + 64
                mem[_208] = 30
                mem[_208 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= vInfo[address(_135)].field_0:
                    mem[0] = address(_135)
                    mem[32] = 102
                    idx = idx + 1
                    continue 
                _215 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _215 + 68] = mem[idx + _208 + 32]
                    idx = idx + 32
                    continue 
                mem[_215 + 68] = mem[_215 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _215 + -mem[64] + 100
}

function depositFor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    mem[32] = 106
    if not stor106[address(msg.sender)]:
        revert with 0, 'Not whitelist deposit'
    emit Deposit(arg2, arg1);
    mem[132] = msg.sender
    mem[164] = this.address
    mem[196] = arg2
    mem[96] = 100
    mem[132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[128 len 4] = unknown_0x23b872dd(?????)
    mem[64] = 292
    mem[228] = 32
    mem[260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(baseAssetAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call baseAssetAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if not totalSupply:
            if not arg2:
                if not arg1:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, 0, arg1);
            else:
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if not arg1:
                    revert with 0, 'ERC20: mint to the zero address'
                if (10^18 * arg2 / 10^18) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 10^18 * arg2 / 10^18
                if (10^18 * arg2 / 10^18) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += 10^18 * arg2 / 10^18
                emit Transfer((10^18 * arg2 / 10^18), 0, arg1);
        else:
            require ext_code.size(baseAssetAddress)
            staticcall baseAssetAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var72002 < investmentVehicle.length:
                if var78001 >= investmentVehicle.length:
                    revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[394 len 22], 0, mem[420 len 4]
                require var80002 < investmentVehicle.length
                mem[0] = 103
                mem[292] = 0x25c2f75300000000000000000000000000000000000000000000000000000000
                mem[296] = this.address
                require ext_code.size(address(var86001))
                staticcall var88002.mem[var88003 len 4] with:
                        gas gas_remaining wei
                       args mem[var88003 + 4 len var88004 - 4]
                mem[var88005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                s = 292
                s = var90006
                s = var90007
                t = var90008
                while t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 >= t:
                    if s + 1 < investmentVehicle.length:
                        mem[0] = 103
                        mem[296] = this.address
                        require ext_code.size(investmentVehicle[s].field_256)
                        staticcall investmentVehicle[s].field_256.baseAssetBalanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[292] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = 292
                        s = investmentVehicle[s].field_256
                        s = s + 1
                        t = ext_call.return_data[0] + t
                        continue 
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000:
                        if not totalSupply:
                            mem[356] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[360] = 32
                            idx = 32
                            while idx < 26:
                                mem[idx + 424] = mem[idx + 324]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg2:
                            if not 0 / totalSupply:
                                mem[420] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[424] = 32
                                idx = 32
                                while idx < 26:
                                    mem[idx + 488] = mem[idx + 388]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not arg1:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (0 / 0 / totalSupply) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 0 / 0 / totalSupply
                            if (0 / 0 / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += 0 / 0 / totalSupply
                            emit Transfer((0 / 0 / totalSupply), 0, arg1);
                        else:
                            if 10^18 * arg2 / arg2 != 10^18:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[457 len 31]
                            if not 0 / totalSupply:
                                mem[420] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[424] = 32
                                idx = 32
                                while idx < 26:
                                    mem[idx + 488] = mem[idx + 388]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not arg1:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (10^18 * arg2 / 0 / totalSupply) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 10^18 * arg2 / 0 / totalSupply
                            if (10^18 * arg2 / 0 / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += 10^18 * arg2 / 0 / totalSupply
                            emit Transfer((10^18 * arg2 / 0 / totalSupply), 0, arg1);
                    else:
                        if (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 != 10^18:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if not totalSupply:
                            mem[356] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[360] = 32
                            idx = 32
                            while idx < 26:
                                mem[idx + 424] = mem[idx + 324]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg2:
                            if not (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply:
                                mem[420] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[424] = 32
                                idx = 32
                                while idx < 26:
                                    mem[idx + 488] = mem[idx + 388]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not arg1:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                            if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                            emit Transfer((0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply), 0, arg1);
                        else:
                            if 10^18 * arg2 / arg2 != 10^18:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[457 len 31]
                            if not (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply:
                                mem[420] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[424] = 32
                                idx = 32
                                while idx < 26:
                                    mem[idx + 488] = mem[idx + 388]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not arg1:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                            if (10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += 10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                            emit Transfer((10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply), 0, arg1);
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] + var72003 < var72003:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0] + var72003:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg2:
                    if not 0 / totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (0 / 0 / totalSupply) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / 0 / totalSupply
                    if (0 / 0 / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += 0 / 0 / totalSupply
                    emit Transfer((0 / 0 / totalSupply), 0, arg1);
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[457 len 31]
                    if not 0 / totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (10^18 * arg2 / 0 / totalSupply) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 10^18 * arg2 / 0 / totalSupply
                    if (10^18 * arg2 / 0 / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += 10^18 * arg2 / 0 / totalSupply
                    emit Transfer((10^18 * arg2 / 0 / totalSupply), 0, arg1);
            else:
                if (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / ext_call.return_data[0] + var72003 != 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg2:
                    if not (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply
                    if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply
                    emit Transfer((0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply), 0, arg1);
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[457 len 31]
                    if not (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply
                    if (10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += 10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply
                    emit Transfer((10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply), 0, arg1);
    else:
        mem[64] = ceil32(return_data.size) + 293
        mem[292] = return_data.size
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if not totalSupply:
                if not arg2:
                    if not arg1:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, arg1);
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    if not arg1:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (10^18 * arg2 / 10^18) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 10^18 * arg2 / 10^18
                    if (10^18 * arg2 / 10^18) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += 10^18 * arg2 / 10^18
                    emit Transfer((10^18 * arg2 / 10^18), 0, arg1);
            else:
                require ext_code.size(baseAssetAddress)
                staticcall baseAssetAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var70002 < investmentVehicle.length:
                    if var76001 >= investmentVehicle.length:
                        revert with 0, 
                                    32,
                                    34,
                                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                                    mem[ceil32(return_data.size) + 395 len 30]
                    require var78002 < investmentVehicle.length
                    mem[0] = 103
                    mem[ceil32(return_data.size) + 293] = 0x25c2f75300000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 297] = this.address
                    require ext_code.size(address(var84001))
                    staticcall var86002.mem[var86003 len 4] with:
                            gas gas_remaining wei
                           args mem[var86003 + 4 len var86004 - 4]
                    mem[var86005] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    s = ceil32(return_data.size) + 293
                    s = var88006
                    s = var88007
                    t = var88008
                    while t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 >= t:
                        if s + 1 < investmentVehicle.length:
                            mem[0] = 103
                            mem[ceil32(return_data.size) + 297] = this.address
                            require ext_code.size(investmentVehicle[s].field_256)
                            staticcall investmentVehicle[s].field_256.baseAssetBalanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 293] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = ceil32(return_data.size) + 293
                            s = investmentVehicle[s].field_256
                            s = s + 1
                            t = ext_call.return_data[0] + t
                            continue 
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000:
                            if not totalSupply:
                                mem[ceil32(return_data.size) + 357] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 361] = 32
                                idx = 32
                                while idx < 26:
                                    mem[idx + ceil32(return_data.size) + 425] = mem[idx + ceil32(return_data.size) + 325]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not arg2:
                                if not 0 / totalSupply:
                                    mem[ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 425] = 32
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + ceil32(return_data.size) + 489] = mem[idx + ceil32(return_data.size) + 389]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not arg1:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (0 / 0 / totalSupply) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 0 / 0 / totalSupply
                                if (0 / 0 / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += 0 / 0 / totalSupply
                                emit Transfer((0 / 0 / totalSupply), 0, arg1);
                            else:
                                if 10^18 * arg2 / arg2 != 10^18:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 458 len 31]
                                if not 0 / totalSupply:
                                    mem[ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 425] = 32
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + ceil32(return_data.size) + 489] = mem[idx + ceil32(return_data.size) + 389]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not arg1:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (10^18 * arg2 / 0 / totalSupply) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 10^18 * arg2 / 0 / totalSupply
                                if (10^18 * arg2 / 0 / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += 10^18 * arg2 / 0 / totalSupply
                                emit Transfer((10^18 * arg2 / 0 / totalSupply), 0, arg1);
                        else:
                            if (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 != 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if not totalSupply:
                                mem[ceil32(return_data.size) + 357] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 361] = 32
                                idx = 32
                                while idx < 26:
                                    mem[idx + ceil32(return_data.size) + 425] = mem[idx + ceil32(return_data.size) + 325]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not arg2:
                                if not (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply:
                                    mem[ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 425] = 32
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + ceil32(return_data.size) + 489] = mem[idx + ceil32(return_data.size) + 389]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not arg1:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                                if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                                emit Transfer((0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply), 0, arg1);
                            else:
                                if 10^18 * arg2 / arg2 != 10^18:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 458 len 31]
                                if not (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply:
                                    mem[ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 425] = 32
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + ceil32(return_data.size) + 489] = mem[idx + ceil32(return_data.size) + 389]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not arg1:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                                if (10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += 10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                                emit Transfer((10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply), 0, arg1);
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] + var70003 < var70003:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0] + var70003:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg2:
                        if not 0 / totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / 0 / totalSupply) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / 0 / totalSupply
                        if (0 / 0 / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += 0 / 0 / totalSupply
                        emit Transfer((0 / 0 / totalSupply), 0, arg1);
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 458 len 31]
                        if not 0 / totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10^18 * arg2 / 0 / totalSupply) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10^18 * arg2 / 0 / totalSupply
                        if (10^18 * arg2 / 0 / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += 10^18 * arg2 / 0 / totalSupply
                        emit Transfer((10^18 * arg2 / 0 / totalSupply), 0, arg1);
                else:
                    if (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / ext_call.return_data[0] + var70003 != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg2:
                        if not (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply
                        if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply
                        emit Transfer((0 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply), 0, arg1);
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 458 len 31]
                        if not (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply
                        if (10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += 10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply
                        emit Transfer((10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply), 0, arg1);
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            if not totalSupply:
                if not arg2:
                    if not arg1:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, arg1);
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    if not arg1:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (10^18 * arg2 / 10^18) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 10^18 * arg2 / 10^18
                    if (10^18 * arg2 / 10^18) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += 10^18 * arg2 / 10^18
                    emit Transfer((10^18 * arg2 / 10^18), 0, arg1);
            else:
                require ext_code.size(baseAssetAddress)
                staticcall baseAssetAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var72002 < investmentVehicle.length:
                    if var78001 >= investmentVehicle.length:
                        revert with 0, 
                                    32,
                                    34,
                                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                                    mem[ceil32(return_data.size) + 395 len 30]
                    require var80002 < investmentVehicle.length
                    mem[0] = 103
                    mem[ceil32(return_data.size) + 293] = 0x25c2f75300000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 297] = this.address
                    require ext_code.size(address(var86001))
                    staticcall var88002.mem[var88003 len 4] with:
                            gas gas_remaining wei
                           args mem[var88003 + 4 len var88004 - 4]
                    mem[var88005] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    s = ceil32(return_data.size) + 293
                    s = var90006
                    s = var90007
                    t = var90008
                    while t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 >= t:
                        if s + 1 < investmentVehicle.length:
                            mem[0] = 103
                            mem[ceil32(return_data.size) + 297] = this.address
                            require ext_code.size(investmentVehicle[s].field_256)
                            staticcall investmentVehicle[s].field_256.baseAssetBalanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 293] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = ceil32(return_data.size) + 293
                            s = investmentVehicle[s].field_256
                            s = s + 1
                            t = ext_call.return_data[0] + t
                            continue 
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000:
                            if not totalSupply:
                                mem[ceil32(return_data.size) + 357] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 361] = 32
                                idx = 32
                                while idx < 26:
                                    mem[idx + ceil32(return_data.size) + 425] = mem[idx + ceil32(return_data.size) + 325]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not arg2:
                                if not 0 / totalSupply:
                                    mem[ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 425] = 32
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + ceil32(return_data.size) + 489] = mem[idx + ceil32(return_data.size) + 389]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not arg1:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (0 / 0 / totalSupply) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 0 / 0 / totalSupply
                                if (0 / 0 / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += 0 / 0 / totalSupply
                                emit Transfer((0 / 0 / totalSupply), 0, arg1);
                            else:
                                if 10^18 * arg2 / arg2 != 10^18:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 458 len 31]
                                if not 0 / totalSupply:
                                    mem[ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 425] = 32
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + ceil32(return_data.size) + 489] = mem[idx + ceil32(return_data.size) + 389]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not arg1:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (10^18 * arg2 / 0 / totalSupply) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 10^18 * arg2 / 0 / totalSupply
                                if (10^18 * arg2 / 0 / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += 10^18 * arg2 / 0 / totalSupply
                                emit Transfer((10^18 * arg2 / 0 / totalSupply), 0, arg1);
                        else:
                            if (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 != 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if not totalSupply:
                                mem[ceil32(return_data.size) + 357] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 361] = 32
                                idx = 32
                                while idx < 26:
                                    mem[idx + ceil32(return_data.size) + 425] = mem[idx + ceil32(return_data.size) + 325]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not arg2:
                                if not (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply:
                                    mem[ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 425] = 32
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + ceil32(return_data.size) + 489] = mem[idx + ceil32(return_data.size) + 389]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not arg1:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                                if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                                emit Transfer((0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply), 0, arg1);
                            else:
                                if 10^18 * arg2 / arg2 != 10^18:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 458 len 31]
                                if not (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply:
                                    mem[ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 425] = 32
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + ceil32(return_data.size) + 489] = mem[idx + ceil32(return_data.size) + 389]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not arg1:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                                if (10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += 10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                                emit Transfer((10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply), 0, arg1);
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] + var72003 < var72003:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0] + var72003:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg2:
                        if not 0 / totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / 0 / totalSupply) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / 0 / totalSupply
                        if (0 / 0 / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += 0 / 0 / totalSupply
                        emit Transfer((0 / 0 / totalSupply), 0, arg1);
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 458 len 31]
                        if not 0 / totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10^18 * arg2 / 0 / totalSupply) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10^18 * arg2 / 0 / totalSupply
                        if (10^18 * arg2 / 0 / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += 10^18 * arg2 / 0 / totalSupply
                        emit Transfer((10^18 * arg2 / 0 / totalSupply), 0, arg1);
                else:
                    if (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / ext_call.return_data[0] + var72003 != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg2:
                        if not (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply
                        if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply
                        emit Transfer((0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply), 0, arg1);
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 458 len 31]
                        if not (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply
                        if (10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += 10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply
                        emit Transfer((10^18 * arg2 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply), 0, arg1);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[32] = 106
    if not stor106[address(msg.sender)]:
        revert with 0, 'Not whitelist deposit'
    emit Deposit(arg1, msg.sender);
    mem[132] = msg.sender
    mem[164] = this.address
    mem[196] = arg1
    mem[96] = 100
    mem[132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[128 len 4] = unknown_0x23b872dd(?????)
    mem[64] = 292
    mem[228] = 32
    mem[260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(baseAssetAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call baseAssetAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if not totalSupply:
            if not arg1:
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, 0, msg.sender);
            else:
                if 10^18 * arg1 / arg1 != 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (10^18 * arg1 / 10^18) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 10^18 * arg1 / 10^18
                if (10^18 * arg1 / 10^18) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 10^18 * arg1 / 10^18
                emit Transfer((10^18 * arg1 / 10^18), 0, msg.sender);
        else:
            require ext_code.size(baseAssetAddress)
            staticcall baseAssetAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var72002 < investmentVehicle.length:
                if var78001 >= investmentVehicle.length:
                    revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[394 len 22], 0, mem[420 len 4]
                require var80002 < investmentVehicle.length
                mem[0] = 103
                mem[292] = 0x25c2f75300000000000000000000000000000000000000000000000000000000
                mem[296] = this.address
                require ext_code.size(address(var86001))
                staticcall var88002.mem[var88003 len 4] with:
                        gas gas_remaining wei
                       args mem[var88003 + 4 len var88004 - 4]
                mem[var88005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                s = 292
                s = var90006
                s = var90007
                t = var90008
                while t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 >= t:
                    if s + 1 < investmentVehicle.length:
                        mem[0] = 103
                        mem[296] = this.address
                        require ext_code.size(investmentVehicle[s].field_256)
                        staticcall investmentVehicle[s].field_256.baseAssetBalanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[292] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = 292
                        s = investmentVehicle[s].field_256
                        s = s + 1
                        t = ext_call.return_data[0] + t
                        continue 
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000:
                        if not totalSupply:
                            mem[356] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[360] = 32
                            idx = 32
                            while idx < 26:
                                mem[idx + 424] = mem[idx + 324]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            if not 0 / totalSupply:
                                mem[420] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[424] = 32
                                idx = 32
                                while idx < 26:
                                    mem[idx + 488] = mem[idx + 388]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (0 / 0 / totalSupply) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 0 / 0 / totalSupply
                            if (0 / 0 / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += 0 / 0 / totalSupply
                            emit Transfer((0 / 0 / totalSupply), 0, msg.sender);
                        else:
                            if 10^18 * arg1 / arg1 != 10^18:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[457 len 31]
                            if not 0 / totalSupply:
                                mem[420] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[424] = 32
                                idx = 32
                                while idx < 26:
                                    mem[idx + 488] = mem[idx + 388]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (10^18 * arg1 / 0 / totalSupply) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 10^18 * arg1 / 0 / totalSupply
                            if (10^18 * arg1 / 0 / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += 10^18 * arg1 / 0 / totalSupply
                            emit Transfer((10^18 * arg1 / 0 / totalSupply), 0, msg.sender);
                    else:
                        if (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 != 10^18:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if not totalSupply:
                            mem[356] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[360] = 32
                            idx = 32
                            while idx < 26:
                                mem[idx + 424] = mem[idx + 324]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            if not (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply:
                                mem[420] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[424] = 32
                                idx = 32
                                while idx < 26:
                                    mem[idx + 488] = mem[idx + 388]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                            if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                            emit Transfer((0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply), 0, msg.sender);
                        else:
                            if 10^18 * arg1 / arg1 != 10^18:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[457 len 31]
                            if not (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply:
                                mem[420] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[424] = 32
                                idx = 32
                                while idx < 26:
                                    mem[idx + 488] = mem[idx + 388]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                            if (10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += 10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                            emit Transfer((10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply), 0, msg.sender);
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] + var72003 < var72003:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0] + var72003:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 0 / totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (0 / 0 / totalSupply) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / 0 / totalSupply
                    if (0 / 0 / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 0 / 0 / totalSupply
                    emit Transfer((0 / 0 / totalSupply), 0, msg.sender);
                else:
                    if 10^18 * arg1 / arg1 != 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[457 len 31]
                    if not 0 / totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (10^18 * arg1 / 0 / totalSupply) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 10^18 * arg1 / 0 / totalSupply
                    if (10^18 * arg1 / 0 / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 10^18 * arg1 / 0 / totalSupply
                    emit Transfer((10^18 * arg1 / 0 / totalSupply), 0, msg.sender);
            else:
                if (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / ext_call.return_data[0] + var72003 != 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply
                    if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply
                    emit Transfer((0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply), 0, msg.sender);
                else:
                    if 10^18 * arg1 / arg1 != 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[457 len 31]
                    if not (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply
                    if (10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply
                    emit Transfer((10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply), 0, msg.sender);
    else:
        mem[64] = ceil32(return_data.size) + 293
        mem[292] = return_data.size
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if not totalSupply:
                if not arg1:
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, msg.sender);
                else:
                    if 10^18 * arg1 / arg1 != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (10^18 * arg1 / 10^18) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 10^18 * arg1 / 10^18
                    if (10^18 * arg1 / 10^18) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 10^18 * arg1 / 10^18
                    emit Transfer((10^18 * arg1 / 10^18), 0, msg.sender);
            else:
                require ext_code.size(baseAssetAddress)
                staticcall baseAssetAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var70002 < investmentVehicle.length:
                    if var76001 >= investmentVehicle.length:
                        revert with 0, 
                                    32,
                                    34,
                                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                                    mem[ceil32(return_data.size) + 395 len 30]
                    require var78002 < investmentVehicle.length
                    mem[0] = 103
                    mem[ceil32(return_data.size) + 293] = 0x25c2f75300000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 297] = this.address
                    require ext_code.size(address(var84001))
                    staticcall var86002.mem[var86003 len 4] with:
                            gas gas_remaining wei
                           args mem[var86003 + 4 len var86004 - 4]
                    mem[var86005] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    s = ceil32(return_data.size) + 293
                    s = var88006
                    s = var88007
                    t = var88008
                    while t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 >= t:
                        if s + 1 < investmentVehicle.length:
                            mem[0] = 103
                            mem[ceil32(return_data.size) + 297] = this.address
                            require ext_code.size(investmentVehicle[s].field_256)
                            staticcall investmentVehicle[s].field_256.baseAssetBalanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 293] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = ceil32(return_data.size) + 293
                            s = investmentVehicle[s].field_256
                            s = s + 1
                            t = ext_call.return_data[0] + t
                            continue 
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000:
                            if not totalSupply:
                                mem[ceil32(return_data.size) + 357] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 361] = 32
                                idx = 32
                                while idx < 26:
                                    mem[idx + ceil32(return_data.size) + 425] = mem[idx + ceil32(return_data.size) + 325]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not arg1:
                                if not 0 / totalSupply:
                                    mem[ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 425] = 32
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + ceil32(return_data.size) + 489] = mem[idx + ceil32(return_data.size) + 389]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (0 / 0 / totalSupply) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 0 / 0 / totalSupply
                                if (0 / 0 / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += 0 / 0 / totalSupply
                                emit Transfer((0 / 0 / totalSupply), 0, msg.sender);
                            else:
                                if 10^18 * arg1 / arg1 != 10^18:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 458 len 31]
                                if not 0 / totalSupply:
                                    mem[ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 425] = 32
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + ceil32(return_data.size) + 489] = mem[idx + ceil32(return_data.size) + 389]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (10^18 * arg1 / 0 / totalSupply) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 10^18 * arg1 / 0 / totalSupply
                                if (10^18 * arg1 / 0 / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += 10^18 * arg1 / 0 / totalSupply
                                emit Transfer((10^18 * arg1 / 0 / totalSupply), 0, msg.sender);
                        else:
                            if (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 != 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if not totalSupply:
                                mem[ceil32(return_data.size) + 357] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 361] = 32
                                idx = 32
                                while idx < 26:
                                    mem[idx + ceil32(return_data.size) + 425] = mem[idx + ceil32(return_data.size) + 325]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not arg1:
                                if not (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply:
                                    mem[ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 425] = 32
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + ceil32(return_data.size) + 489] = mem[idx + ceil32(return_data.size) + 389]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                                if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                                emit Transfer((0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply), 0, msg.sender);
                            else:
                                if 10^18 * arg1 / arg1 != 10^18:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 458 len 31]
                                if not (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply:
                                    mem[ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 425] = 32
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + ceil32(return_data.size) + 489] = mem[idx + ceil32(return_data.size) + 389]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                                if (10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += 10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                                emit Transfer((10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply), 0, msg.sender);
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] + var70003 < var70003:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0] + var70003:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 0 / totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / 0 / totalSupply) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / 0 / totalSupply
                        if (0 / 0 / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / 0 / totalSupply
                        emit Transfer((0 / 0 / totalSupply), 0, msg.sender);
                    else:
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 458 len 31]
                        if not 0 / totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10^18 * arg1 / 0 / totalSupply) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10^18 * arg1 / 0 / totalSupply
                        if (10^18 * arg1 / 0 / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10^18 * arg1 / 0 / totalSupply
                        emit Transfer((10^18 * arg1 / 0 / totalSupply), 0, msg.sender);
                else:
                    if (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / ext_call.return_data[0] + var70003 != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply
                        if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply
                        emit Transfer((0 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply), 0, msg.sender);
                    else:
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 458 len 31]
                        if not (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply
                        if (10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply
                        emit Transfer((10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * var70003) / totalSupply), 0, msg.sender);
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            if not totalSupply:
                if not arg1:
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, msg.sender);
                else:
                    if 10^18 * arg1 / arg1 != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (10^18 * arg1 / 10^18) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 10^18 * arg1 / 10^18
                    if (10^18 * arg1 / 10^18) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 10^18 * arg1 / 10^18
                    emit Transfer((10^18 * arg1 / 10^18), 0, msg.sender);
            else:
                require ext_code.size(baseAssetAddress)
                staticcall baseAssetAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var72002 < investmentVehicle.length:
                    if var78001 >= investmentVehicle.length:
                        revert with 0, 
                                    32,
                                    34,
                                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                                    mem[ceil32(return_data.size) + 395 len 30]
                    require var80002 < investmentVehicle.length
                    mem[0] = 103
                    mem[ceil32(return_data.size) + 293] = 0x25c2f75300000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 297] = this.address
                    require ext_code.size(address(var86001))
                    staticcall var88002.mem[var88003 len 4] with:
                            gas gas_remaining wei
                           args mem[var88003 + 4 len var88004 - 4]
                    mem[var88005] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    s = ceil32(return_data.size) + 293
                    s = var90006
                    s = var90007
                    t = var90008
                    while t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 >= t:
                        if s + 1 < investmentVehicle.length:
                            mem[0] = 103
                            mem[ceil32(return_data.size) + 297] = this.address
                            require ext_code.size(investmentVehicle[s].field_256)
                            staticcall investmentVehicle[s].field_256.baseAssetBalanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 293] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = ceil32(return_data.size) + 293
                            s = investmentVehicle[s].field_256
                            s = s + 1
                            t = ext_call.return_data[0] + t
                            continue 
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000:
                            if not totalSupply:
                                mem[ceil32(return_data.size) + 357] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 361] = 32
                                idx = 32
                                while idx < 26:
                                    mem[idx + ceil32(return_data.size) + 425] = mem[idx + ceil32(return_data.size) + 325]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not arg1:
                                if not 0 / totalSupply:
                                    mem[ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 425] = 32
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + ceil32(return_data.size) + 489] = mem[idx + ceil32(return_data.size) + 389]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (0 / 0 / totalSupply) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 0 / 0 / totalSupply
                                if (0 / 0 / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += 0 / 0 / totalSupply
                                emit Transfer((0 / 0 / totalSupply), 0, msg.sender);
                            else:
                                if 10^18 * arg1 / arg1 != 10^18:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 458 len 31]
                                if not 0 / totalSupply:
                                    mem[ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 425] = 32
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + ceil32(return_data.size) + 489] = mem[idx + ceil32(return_data.size) + 389]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (10^18 * arg1 / 0 / totalSupply) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 10^18 * arg1 / 0 / totalSupply
                                if (10^18 * arg1 / 0 / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += 10^18 * arg1 / 0 / totalSupply
                                emit Transfer((10^18 * arg1 / 0 / totalSupply), 0, msg.sender);
                        else:
                            if (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[0] + t + 0x25c2f75300000000000000000000000000000000000000000000000000000000 != 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if not totalSupply:
                                mem[ceil32(return_data.size) + 357] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 361] = 32
                                idx = 32
                                while idx < 26:
                                    mem[idx + ceil32(return_data.size) + 425] = mem[idx + ceil32(return_data.size) + 325]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not arg1:
                                if not (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply:
                                    mem[ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 425] = 32
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + ceil32(return_data.size) + 489] = mem[idx + ceil32(return_data.size) + 389]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                                if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                                emit Transfer((0 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply), 0, msg.sender);
                            else:
                                if 10^18 * arg1 / arg1 != 10^18:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 458 len 31]
                                if not (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply:
                                    mem[ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 425] = 32
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + ceil32(return_data.size) + 489] = mem[idx + ceil32(return_data.size) + 389]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                                if (10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += 10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply
                                emit Transfer((10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * t) - 0x3e94000000000000000000000000000000000000000000000000000000000000 / totalSupply), 0, msg.sender);
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] + var72003 < var72003:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0] + var72003:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 0 / totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / 0 / totalSupply) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / 0 / totalSupply
                        if (0 / 0 / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / 0 / totalSupply
                        emit Transfer((0 / 0 / totalSupply), 0, msg.sender);
                    else:
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 458 len 31]
                        if not 0 / totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10^18 * arg1 / 0 / totalSupply) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10^18 * arg1 / 0 / totalSupply
                        if (10^18 * arg1 / 0 / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10^18 * arg1 / 0 / totalSupply
                        emit Transfer((10^18 * arg1 / 0 / totalSupply), 0, msg.sender);
                else:
                    if (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / ext_call.return_data[0] + var72003 != 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply
                        if (0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply
                        emit Transfer((0 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply), 0, msg.sender);
                    else:
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 458 len 31]
                        if not (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply
                        if (10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply
                        emit Transfer((10^18 * arg1 / (10^18 * ext_call.return_data[0]) + (10^18 * var72003) / totalSupply), 0, msg.sender);
}



}
