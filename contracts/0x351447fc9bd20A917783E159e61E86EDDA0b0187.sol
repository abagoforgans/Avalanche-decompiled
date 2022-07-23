contract main {




// =====================  Runtime code  =====================


const sub_eabcd0a4(?) = 0x53570b66c9642abfc1b1b74ee3dff9b6aeb7638291a5983f7881f58149d86cd7


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address accessControlsAddress;
mapping of struct farmInfo;
array of struct farms;
uint256 farmTemplateId;
mapping of address farmTemplate;
mapping of uint256 templateId;
mapping of uint256 currentTemplateId;
uint256 minimumFee;
uint256 integratorFeePct;
address misoDivAddress;

function minimumFee() {
    return minimumFee
}

function farmTemplateId() {
    return farmTemplateId
}

function farmInfo(address arg1) {
    require calldata.size - 4 >= 32
    return bool(farmInfo[arg1].field_0), farmInfo[arg1].field_256, farmInfo[arg1].field_512
}

function currentTemplateId(uint256 arg1) {
    require calldata.size - 4 >= 32
    return currentTemplateId[arg1]
}

function integratorFeePct() {
    return integratorFeePct
}

function getFarmTemplate(uint256 arg1) {
    require calldata.size - 4 >= 32
    return farmTemplate[arg1]
}

function accessControls() {
    return accessControlsAddress
}

function farms(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < farms.length
    return farms[arg1].field_0
}

function numberOfFarms() {
    return farms.length
}

function misoDiv() {
    return misoDivAddress
}

function locked() {
    return bool(uint8(stor0.field_168))
}

function getTemplateId(address arg1) {
    require calldata.size - 4 >= 32
    return templateId[address(arg1)]
}

function _fallback() payable {
    revert
}

function initMISOFarmFactory(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require not uint8(stor0.field_160)
    require arg2
    misoDivAddress = arg2
    minimumFee = arg3
    integratorFeePct = arg4
    accessControlsAddress = arg1
    uint8(stor0.field_160) = 1
    Mask(96, 0, stor0.field_160) = 0
    uint8(stor0.field_168) = 1
    Mask(88, 0, stor0.field_168) = 0
    emit MisoInitFarmFactory(msg.sender);
}

function hasFarmMinterRole(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0x53570b66c9642abfc1b1b74ee3dff9b6aeb7638291a5983f7881f58149d86cd7, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
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
                    40,
                    0x6e4d49534f4661726d466163746f72793a2053656e646572206d757374206265206f70657261746f,
                    mem[204 len 24]
    minimumFee = arg1
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
                    37,
                    0x304d49534f4661726d466163746f72793a2053656e646572206d7573742062652061646d69,
                    mem[201 len 27]
    Mask(88, 0, stor0.field_168) = Mask(88, 0, arg1)
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
                    40,
                    0x6e4d49534f4661726d466163746f72793a2053656e646572206d757374206265206f70657261746f,
                    mem[204 len 24]
    require arg1
    misoDivAddress = arg1
}

function getFarms() {
    if not farms.length:
        mem[(32 * farms.length) + 128] = 32
        mem[(32 * farms.length) + 160] = farms.length
        mem[(32 * farms.length) + 192 len floor32(farms.length)] = mem[128 len floor32(farms.length)]
        return memory
          from (32 * farms.length) + 128
           len (96 * farms.length) + 64
    mem[128] = address(farms.field_0)
    idx = 128
    s = 0
    while (32 * farms.length) + 96 > idx:
        mem[idx + 32] = farms[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * farms.length) + 192 len floor32(farms.length)] = mem[128 len floor32(farms.length)]
    return Array(len=farms.length, data=mem[128 len floor32(farms.length)], mem[(32 * farms.length) + floor32(farms.length) + 192 len (32 * farms.length) - floor32(farms.length)]), 
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
                    40,
                    0x6e4d49534f4661726d466163746f72793a2053656e646572206d757374206265206f70657261746f,
                    mem[204 len 24]
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x644d49534f4661726d466163746f72793a2052616e67652069732066726f6d203020746f20313030,
                    mem[204 len 24]
    integratorFeePct = arg1
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
                        0x304d49534f4661726d466163746f72793a2053656e646572206d7573742062652061646d69,
                        mem[201 len 27]
    currentTemplateId[arg1] = arg2
}

function removeFarmTemplate(uint256 arg1) {
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
                        40,
                        0x6e4d49534f4661726d466163746f72793a2053656e646572206d757374206265206f70657261746f,
                        mem[204 len 24]
    require farmTemplate[arg1]
    farmTemplate[arg1] = 0
    templateId[stor4[arg1]] = 0
    emit FarmTemplateRemoved(farmTemplate[arg1], arg1);
}

function addFarmTemplate(address arg1) {
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
                        40,
                        0x6e4d49534f4661726d466163746f72793a2053656e646572206d757374206265206f70657261746f,
                        mem[204 len 24]
    if templateId[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x644d49534f4661726d466163746f72793a2054656d706c61746520616c72656164792061646465,
                    mem[203 len 25]
    require ext_code.size(arg1)
    staticcall arg1.0x2c77f656 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe4d49534f4661726d466163746f72793a20496e636f72726563742074656d706c61746520636f6465,
                    mem[205 len 23]
    farmTemplateId++
    farmTemplate[stor3 + 1] = arg1
    templateId[address(arg1)] = farmTemplateId
    currentTemplateId[ext_call.return_data[0]] = farmTemplateId
    emit FarmTemplateAdded(address(arg1), farmTemplateId);
}

function deployFarm(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_168):
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
                       args 0x53570b66c9642abfc1b1b74ee3dff9b6aeb7638291a5983f7881f58149d86cd7, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x654d49534f4661726d466163746f72793a2053656e646572206d757374206265206d696e746572206966206c6f636b65,
                                mem[212 len 16]
    if msg.value < minimumFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x204d49534f4661726d466163746f72793a204661696c656420746f207472616e73666572206d696e696d756d4665,
                    mem[210 len 18]
    require farmTemplate[arg1]
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, farmTemplate[arg1], 0x5af43d82803e903d91602b57fd5bf3
    farmInfo[address(create.new_address)].field_0 = 1
    farmInfo[address(create.new_address)].field_256 = arg1
    farmInfo[address(create.new_address)].field_512 = farms.length
    farms.length++
    farms[farms.length].field_0 = address(create.new_address)
    emit FarmCreated(farmTemplate[arg1], msg.sender, address(create.new_address));
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
            if msg.value - (msg.value * integratorFeePct / 1000):
                call misoDivAddress with:
                   value msg.value - (msg.value * integratorFeePct / 1000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if msg.value * integratorFeePct / 1000:
                call arg2 with:
                   value msg.value * integratorFeePct / 1000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function createFarm(uint256 arg1, address arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if uint8(stor0.field_168):
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
                       args 0x53570b66c9642abfc1b1b74ee3dff9b6aeb7638291a5983f7881f58149d86cd7, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x654d49534f4661726d466163746f72793a2053656e646572206d757374206265206d696e746572206966206c6f636b65,
                                mem[212 len 16]
    if msg.value < minimumFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x204d49534f4661726d466163746f72793a204661696c656420746f207472616e73666572206d696e696d756d4665,
                    mem[210 len 18]
    require farmTemplate[arg1]
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, farmTemplate[arg1], 0x5af43d82803e903d91602b57fd5bf3
    farmInfo[address(create.new_address)].field_0 = 1
    farmInfo[address(create.new_address)].field_256 = arg1
    farmInfo[address(create.new_address)].field_512 = farms.length
    farms.length++
    farms[farms.length].field_0 = address(create.new_address)
    emit FarmCreated(farmTemplate[arg1], msg.sender, address(create.new_address));
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
            if msg.value - (msg.value * integratorFeePct / 1000):
                call misoDivAddress with:
                   value msg.value - (msg.value * integratorFeePct / 1000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if msg.value * integratorFeePct / 1000:
                call arg2 with:
                   value msg.value * integratorFeePct / 1000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x824fa821 with:
         gas gas_remaining wei
        args Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
