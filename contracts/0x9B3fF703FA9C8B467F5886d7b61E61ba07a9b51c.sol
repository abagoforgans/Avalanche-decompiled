contract main {




// =====================  Runtime code  =====================


const TOKEN_MINTER_ROLE = 0xb3bb6029312d1001076133d40b75b7eca92ba54e4963b3ce24e1486a3d5a038b


uint8 stor0; offset 160
uint128 stor0; offset 160
address accessControlsAddress;
mapping of struct tokenInfo;
array of struct tokens;
uint256 tokenTemplateId;
mapping of address tokenTemplate;
mapping of uint256 templateId;
mapping of uint256 currentTemplateId;
uint256 minimumFee;
uint256 integratorFeePct;
uint8 stor9;
address misoDivAddress; offset 8

function getTokenTemplate(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenTemplate[arg1]
}

function minimumFee() {
    return minimumFee
}

function currentTemplateId(uint256 arg1) {
    require calldata.size - 4 >= 32
    return currentTemplateId[arg1]
}

function tokenTemplateId() {
    return tokenTemplateId
}

function integratorFeePct() {
    return integratorFeePct
}

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1].field_0
}

function accessControls() {
    return accessControlsAddress
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

function tokenInfo(address arg1) {
    require calldata.size - 4 >= 32
    return bool(tokenInfo[arg1].field_0), tokenInfo[arg1].field_256, tokenInfo[arg1].field_512
}

function numberOfTokens() {
    return tokens.length
}

function _fallback() payable {
    revert
}

function initMISOTokenFactory(address arg1) {
    require calldata.size - 4 >= 32
    require not uint8(stor0.field_160)
    stor9 = 1
    accessControlsAddress = arg1
    uint8(stor0.field_160) = 1
    Mask(96, 0, stor0.field_160) = 0
    emit MisoInitTokenFactory(msg.sender);
}

function hasTokenMinterRole(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(accessControlsAddress)
    staticcall accessControlsAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xb3bb6029312d1001076133d40b75b7eca92ba54e4963b3ce24e1486a3d5a038b, arg1
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
                    38,
                    0x644d49534f546f6b656e466163746f72793a2053656e646572206d7573742062652061646d69,
                    mem[202 len 26]
    stor9 = uint8(arg1)
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
                    41,
                    0xfe4d49534f546f6b656e466163746f72793a2053656e646572206d757374206265206f70657261746f,
                    mem[205 len 23]
    minimumFee = arg1
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
                    41,
                    0xfe4d49534f546f6b656e466163746f72793a2053656e646572206d757374206265206f70657261746f,
                    mem[205 len 23]
    require arg1
    misoDivAddress = arg1
}

function getTokens() {
    if not tokens.length:
        mem[(32 * tokens.length) + 128] = 32
        mem[(32 * tokens.length) + 160] = tokens.length
        mem[(32 * tokens.length) + 192 len floor32(tokens.length)] = mem[128 len floor32(tokens.length)]
        return memory
          from (32 * tokens.length) + 128
           len (96 * tokens.length) + 64
    mem[128] = address(tokens.field_0)
    idx = 128
    s = 0
    while (32 * tokens.length) + 96 > idx:
        mem[idx + 32] = tokens[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokens.length) + 192 len floor32(tokens.length)] = mem[128 len floor32(tokens.length)]
    return Array(len=tokens.length, data=mem[128 len floor32(tokens.length)], mem[(32 * tokens.length) + floor32(tokens.length) + 192 len (32 * tokens.length) - floor32(tokens.length)]), 
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
                    41,
                    0xfe4d49534f546f6b656e466163746f72793a2053656e646572206d757374206265206f70657261746f,
                    mem[205 len 23]
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x654d49534f546f6b656e466163746f72793a2052616e67652069732066726f6d203020746f20313030,
                    mem[205 len 23]
    integratorFeePct = arg1
}

function removeTokenTemplate(uint256 arg1) {
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
                        41,
                        0xfe4d49534f546f6b656e466163746f72793a2053656e646572206d757374206265206f70657261746f,
                        mem[205 len 23]
    require tokenTemplate[arg1]
    require ext_code.size(tokenTemplate[arg1])
    staticcall tokenTemplate[arg1].tokenTemplate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == currentTemplateId[ext_call.return_data[0]]:
        currentTemplateId[ext_call.return_data[0]] = 0
    tokenTemplate[arg1] = 0
    templateId[stor4[arg1]] = 0
    emit TokenTemplateRemoved(tokenTemplate[arg1], arg1);
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
                        38,
                        0x644d49534f546f6b656e466163746f72793a2053656e646572206d7573742062652061646d69,
                        mem[202 len 26]
    if not tokenTemplate[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x724d49534f546f6b656e466163746f72793a20696e636f7272656374205f74656d706c61746549,
                    mem[203 len 25]
    require ext_code.size(tokenTemplate[arg2])
    staticcall tokenTemplate[arg2].tokenTemplate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734d49534f546f6b656e466163746f72793a20696e636f7272656374205f74656d706c617465547970,
                    mem[205 len 23]
    currentTemplateId[arg1] = arg2
}

function addTokenTemplate(address arg1) {
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
                        41,
                        0xfe4d49534f546f6b656e466163746f72793a2053656e646572206d757374206265206f70657261746f,
                        mem[205 len 23]
    require ext_code.size(arg1)
    staticcall arg1.tokenTemplate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x654d49534f546f6b656e466163746f72793a20496e636f72726563742074656d706c61746520636f6465,
                    mem[206 len 22]
    if templateId[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x204d49534f546f6b656e466163746f72793a2054656d706c617465206578697374,
                    mem[197 len 31]
    tokenTemplateId++
    tokenTemplate[stor3 + 1] = arg1
    templateId[address(arg1)] = tokenTemplateId
    currentTemplateId[ext_call.return_data[0]] = tokenTemplateId
    emit TokenTemplateAdded(address(arg1), tokenTemplateId);
}

function deployToken(uint256 arg1, address arg2) payable {
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
                       args 0xb3bb6029312d1001076133d40b75b7eca92ba54e4963b3ce24e1486a3d5a038b, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                49,
                                0x304d49534f546f6b656e466163746f72793a2053656e646572206d757374206265206d696e746572206966206c6f636b65,
                                mem[213 len 15]
    if msg.value < minimumFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4d49534f546f6b656e466163746f72793a204661696c656420746f207472616e73666572206d696e696d756d4665,
                    mem[211 len 17]
    if not tokenTemplate[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x724d49534f546f6b656e466163746f72793a20696e636f7272656374205f74656d706c61746549,
                    mem[203 len 25]
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, tokenTemplate[arg1], 0x5af43d82803e903d91602b57fd5bf3
    tokenInfo[address(create.new_address)].field_0 = 1
    tokenInfo[address(create.new_address)].field_256 = arg1
    tokenInfo[address(create.new_address)].field_512 = tokens.length
    tokens.length++
    tokens[tokens.length].field_0 = address(create.new_address)
    emit TokenCreated(tokenTemplate[arg1], msg.sender, address(create.new_address));
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

function createToken(uint256 arg1, address arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
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
                       args 0xb3bb6029312d1001076133d40b75b7eca92ba54e4963b3ce24e1486a3d5a038b, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                49,
                                0x304d49534f546f6b656e466163746f72793a2053656e646572206d757374206265206d696e746572206966206c6f636b65,
                                mem[213 len 15]
    if msg.value < minimumFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4d49534f546f6b656e466163746f72793a204661696c656420746f207472616e73666572206d696e696d756d4665,
                    mem[211 len 17]
    if not tokenTemplate[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x724d49534f546f6b656e466163746f72793a20696e636f7272656374205f74656d706c61746549,
                    mem[203 len 25]
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, tokenTemplate[arg1], 0x5af43d82803e903d91602b57fd5bf3
    tokenInfo[address(create.new_address)].field_0 = 1
    tokenInfo[address(create.new_address)].field_256 = arg1
    tokenInfo[address(create.new_address)].field_512 = tokens.length
    tokens.length++
    tokens[tokens.length].field_0 = address(create.new_address)
    emit TokenCreated(tokenTemplate[arg1], msg.sender, address(create.new_address));
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
    mem[256] = arg3.length
    mem[arg3.length + 288] = 0
    emit TokenInitialized(arg1, Array(len=arg3.length, data=arg3[all]), address(create.new_address));
    mem[260 len arg3.length] = arg3[all]
    mem[arg3.length + 260] = 0
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x60b1cc80 with:
         gas gas_remaining wei
        args Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[292 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call address(create.new_address) with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[356 len 4]
        require return_data.size
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size:
            require return_data.size >= 32
            require mem[324]
    return address(create.new_address)
}



}
