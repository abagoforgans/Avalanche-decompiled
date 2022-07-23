contract main {




// =====================  Runtime code  =====================


#
#  - sub_632cef90(?)
#
const sub_8637e041(?) = 0xceb69df9dd42f6c115645ad1e6ac8c9f124a39546dd50de2e04024128b146980


uint8 stor0; offset 160
address accessControlsAddress;
array of struct launchers;
uint256 launcherTemplateId;
address bentoBoxAddress;
mapping of address liquidityLauncherTemplate;
mapping of uint256 templateId;
mapping of uint256 currentTemplateId;
mapping of struct sub_6c4ceb36;
uint32 stor8; offset 128
uint128 minimumFee;
uint8 stor9;
address misoDivAddress; offset 8

function minimumFee() {
    return minimumFee
}

function currentTemplateId(uint256 arg1) {
    require calldata.size - 4 >= 32
    return currentTemplateId[arg1]
}

function launchers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < launchers.length
    return launchers[arg1].field_0
}

function bentoBox() {
    return bentoBoxAddress
}

function sub_6c4ceb36(?) {
    require calldata.size - 4 >= 32
    return bool(sub_6c4ceb36[arg1].field_0), sub_6c4ceb36[arg1].field_0, sub_6c4ceb36[arg1].field_72
}

function getLiquidityLauncherTemplate(uint256 arg1) {
    require calldata.size - 4 >= 32
    return liquidityLauncherTemplate[arg1]
}

function accessControls() {
    return accessControlsAddress
}

function numberOfLiquidityLauncherContracts() {
    return launchers.length
}

function launcherTemplateId() {
    return launcherTemplateId
}

function getLauncherTemplateId(address arg1) {
    require calldata.size - 4 >= 32
    return sub_6c4ceb36[address(arg1)].field_8
}

function misoDiv() {
    return misoDivAddress
}

function locked() {
    return bool(stor9)
}

function getTemplateId(address arg1) {
    require calldata.size - 4 >= 32
    return templateId[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_fcb62f90(?) {
    return minimumFee, stor8
}

function hasLauncherMinterRole(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xceb69df9dd42f6c115645ad1e6ac8c9f124a39546dd50de2e04024128b146980, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function setLocked(bool arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0xc395fcb3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x654d49534f4c61756e636865723a2053656e646572206d7573742062652061646d69,
                    mem[198 len 30]
    stor9 = uint8(arg1)
}

function setDividends(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0xc395fcb3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654d49534f4c61756e636865723a2053656e646572206d757374206265206f70657261746f,
                    mem[201 len 27]
    require arg1
    misoDivAddress = arg1
}

function setMinimumFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0xc395fcb3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654d49534f4c61756e636865723a2053656e646572206d757374206265206f70657261746f,
                    mem[201 len 27]
    if arg1 > test266151307():
        revert with 0, 'BoringMath: uint128 Overflow'
    minimumFee = uint128(arg1)
}

function initMISOLauncher(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require not stor0
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x64696e69744d49534f4c61756e636865723a20616363657373436f6e74726f6c732063616e6e6f742062652073657420746f207a6572,
                    mem[218 len 10]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6f696e69744d49534f4c61756e636865723a2062656e746f426f782063616e6e6f742062652073657420746f207a6572,
                    mem[212 len 16]
    bentoBoxAddress = arg2
    stor9 = 1
    accessControlsAddress = arg1
    stor0 = 1
    emit MisoInitLauncher(msg.sender);
}

function getLaunchers() {
    if not launchers.length:
        mem[(32 * launchers.length) + 128] = 32
        mem[(32 * launchers.length) + 160] = launchers.length
        mem[(32 * launchers.length) + 192 len floor32(launchers.length)] = mem[128 len floor32(launchers.length)]
        return memory
          from (32 * launchers.length) + 128
           len (96 * launchers.length) + 64
    mem[128] = address(launchers.field_0)
    idx = 128
    s = 0
    while (32 * launchers.length) + 96 > idx:
        mem[idx + 32] = launchers[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * launchers.length) + 192 len floor32(launchers.length)] = mem[128 len floor32(launchers.length)]
    return Array(len=launchers.length, data=mem[128 len floor32(launchers.length)], mem[(32 * launchers.length) + floor32(launchers.length) + 192 len (32 * launchers.length) - floor32(launchers.length)]), 
}

function setIntegratorFeePct(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0xc395fcb3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654d49534f4c61756e636865723a2053656e646572206d757374206265206f70657261746f,
                    mem[201 len 27]
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x724d49534f4c61756e636865723a2050657263656e74616765206973206f7574206f6620313030,
                    mem[203 len 25]
    stor8 = uint32(arg1)
}

function setCurrentTemplateId(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0xc395fcb3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(accessControlsAddress)
        staticcall accessControlsAddress.0xfc4e3e0a with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x6f4d49534f4c61756e636865723a2053656e646572206d757374206265204f70657261746f,
                        mem[201 len 27]
    currentTemplateId[arg1] = arg2
}

function removeLiquidityLauncherTemplate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0xc395fcb3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(accessControlsAddress)
        staticcall accessControlsAddress.0xfc4e3e0a with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x654d49534f4c61756e636865723a2053656e646572206d757374206265206f70657261746f,
                        mem[201 len 27]
    require liquidityLauncherTemplate[arg1]
    liquidityLauncherTemplate[arg1] = 0
    templateId[stor4[arg1]] = 0
    require ext_code.size(liquidityLauncherTemplate[arg1])
    staticcall liquidityLauncherTemplate[arg1].liquidityTemplate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == currentTemplateId[ext_call.return_data[0]]:
        currentTemplateId[ext_call.return_data[0]] = 0
    emit LauncherTemplateRemoved(liquidityLauncherTemplate[arg1], arg1);
}

function addLiquidityLauncherTemplate(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0xc395fcb3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(accessControlsAddress)
        staticcall accessControlsAddress.0xfc4e3e0a with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x654d49534f4c61756e636865723a2053656e646572206d757374206265206f70657261746f,
                        mem[201 len 27]
    require ext_code.size(arg1)
    staticcall arg1.liquidityTemplate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x744d49534f4c61756e636865723a20496e636f72726563742074656d706c61746520636f64,
                    mem[201 len 27]
    launcherTemplateId++
    liquidityLauncherTemplate[stor2 + 1] = arg1
    templateId[address(arg1)] = launcherTemplateId
    currentTemplateId[ext_call.return_data[0]] = launcherTemplateId
    emit LauncherTemplateAdded(address(arg1), launcherTemplateId);
}

function sub_cd70f734(?) payable {
    require calldata.size - 4 >= 64
    if stor9:
        require ext_code.size(accessControlsAddress)
        staticcall accessControlsAddress.0xc395fcb3 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(accessControlsAddress)
            staticcall accessControlsAddress.hasMinterRole(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(accessControlsAddress)
                staticcall accessControlsAddress.0x91d14854 with:
                        gas gas_remaining wei
                       args 0xceb69df9dd42f6c115645ad1e6ac8c9f124a39546dd50de2e04024128b146980, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                45,
                                0x6e4d49534f4c61756e636865723a2053656e646572206d757374206265206d696e746572206966206c6f636b65,
                                mem[209 len 19]
    if msg.value < minimumFee:
        revert with 0, 32, 43, 0x6c4d49534f4c61756e636865723a204661696c656420746f207472616e73666572206d696e696d756d4665, mem[335 len 21]
    if not liquidityLauncherTemplate[arg1]:
        revert with 0, 
                    32,
                    45,
                    0xfe4d49534f4c61756e636865723a204c61756e636865722074656d706c61746520646f65736e27742065786973,
                    mem[337 len 19]
    require ext_code.size(bentoBoxAddress)
    call bentoBoxAddress.0x1f54245b with:
         gas gas_remaining wei
        args liquidityLauncherTemplate[arg1], 96, 0, 0, mem[356]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > test266151307():
        revert with 0, 'BoringMath: uint64 Overflow'
    if launchers.length > test266151307():
        revert with 0, 'BoringMath: uint128 Overflow'
    sub_6c4ceb36[address(ext_call.return_data[0])].field_0 = 1
    sub_6c4ceb36[address(ext_call.return_data[0])].field_0 = uint128(launchers.length)
    sub_6c4ceb36[address(ext_call.return_data[0])].field_8 = uint64(arg1)
    sub_6c4ceb36[address(ext_call.return_data[0])].field_72 = 0
    sub_6c4ceb36[address(ext_call.return_data[0])].field_200 = 0
    launchers.length++
    launchers[launchers.length].field_0 = address(ext_call.return_data[0])
    emit LauncherCreated(liquidityLauncherTemplate[arg1], msg.sender, address(ext_call.return_data[0]));
    if not arg2:
        if msg.value:
            call misoDivAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if misoDivAddress == arg2:
            if msg.value:
                call misoDivAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if msg.value - (msg.value * stor8 / 1000):
                call misoDivAddress with:
                   value msg.value - (msg.value * stor8 / 1000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if msg.value * stor8 / 1000:
                call arg2 with:
                   value msg.value * stor8 / 1000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    return address(ext_call.return_data[0])
}



}
