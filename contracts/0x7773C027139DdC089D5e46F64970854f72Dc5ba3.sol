contract main {




// =====================  Runtime code  =====================


address _owner;
address sub_af6d07c7Address;
address _treasuryAddress;
uint8 stor3; offset 192
uint32 stor3;
uint32 sub_1f58d195; offset 160
address _controllerAddress;
uint256 stor4;
mapping of uint256 purchased;
mapping of struct sub_d0f4fc02;

function sub_1f58d195(?) {
    return sub_1f58d195
}

function purchased(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return purchased[uint32(stor3.field_0)][address(arg1)]
}

function _open() {
    return bool(uint8(stor3.field_192))
}

function sub_af6d07c7(?) {
    return sub_af6d07c7Address
}

function _owner() {
    return _owner
}

function sub_d0f4fc02(?) {
    require calldata.size - 4 >= 32
    return sub_d0f4fc02[arg1].field_0, 
           sub_d0f4fc02[arg1].field_0,
           sub_d0f4fc02[arg1].field_256,
           sub_d0f4fc02[arg1].field_512,
           sub_d0f4fc02[arg1].field_768
}

function sub_d1878686(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return purchased[arg1][address(arg2)]
}

function _controller() {
    return _controllerAddress
}

function _treasury() {
    return _treasuryAddress
}

function destroy() {
    require msg.sender == _owner
    require not uint8(stor3.field_192)
    selfdestruct(_treasuryAddress)
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        require uint8(stor3.field_192)
        require block.number >= sub_d0f4fc02[uint32(stor3.field_0)].field_160
        require ext_code.size(sub_af6d07c7Address)
        staticcall sub_af6d07c7Address.totalSupplyAt(uint256 rg1) with:
                gas gas_remaining wei
               args sub_d0f4fc02[uint32(stor3.field_0)].field_160
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_af6d07c7Address)
        staticcall sub_af6d07c7Address.balanceOfAt(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, sub_d0f4fc02[uint32(stor3.field_0)].field_160
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if sub_d0f4fc02[uint32(stor3.field_0)].field_768 and 10^6 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / sub_d0f4fc02[uint32(stor3.field_0)].field_768:
            revert with 'NH{q', 17
        if sub_d0f4fc02[uint32(stor3.field_0)].field_768 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 <= sub_d0f4fc02[uint32(stor3.field_0)].field_512:
            if sub_d0f4fc02[uint32(stor3.field_0)].field_768 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 < purchased[uint32(stor3.field_0)][msg.sender]:
                revert with 'NH{q', 17
            if msg.value and stor4 > -1 / msg.value:
                revert with 'NH{q', 17
            if not sub_d0f4fc02[uint32(stor3.field_0)].field_256:
                revert with 'NH{q', 18
            require (sub_d0f4fc02[uint32(stor3.field_0)].field_768 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6) - purchased[uint32(stor3.field_0)][msg.sender] >= msg.value * stor4 / sub_d0f4fc02[uint32(stor3.field_0)].field_256
        else:
            if sub_d0f4fc02[uint32(stor3.field_0)].field_512 < purchased[uint32(stor3.field_0)][msg.sender]:
                revert with 'NH{q', 17
            if msg.value and stor4 > -1 / msg.value:
                revert with 'NH{q', 17
            if not sub_d0f4fc02[uint32(stor3.field_0)].field_256:
                revert with 'NH{q', 18
            require sub_d0f4fc02[uint32(stor3.field_0)].field_512 - purchased[uint32(stor3.field_0)][msg.sender] >= msg.value * stor4 / sub_d0f4fc02[uint32(stor3.field_0)].field_256
        if purchased[uint32(stor3.field_0)][msg.sender] > !(msg.value * stor4 / sub_d0f4fc02[uint32(stor3.field_0)].field_256):
            revert with 'NH{q', 17
        purchased[uint32(stor3.field_0)][msg.sender] += msg.value * stor4 / sub_d0f4fc02[uint32(stor3.field_0)].field_256
        require ext_code.size(sub_d0f4fc02[uint32(stor3.field_0)].field_0)
        call sub_d0f4fc02[uint32(stor3.field_0)].field_0.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value * stor4 / sub_d0f4fc02[uint32(stor3.field_0)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        emit Sold((msg.value * stor4 / sub_d0f4fc02[uint32(stor3.field_0)].field_256), msg.sender);
    else:
        if unknown_0x83197ef0(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xb2bdfa7b(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xd1878686(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xb2bdfa7b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return _owner
                    require unknown_0xd0f4fc02(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return sub_d0f4fc02[arg1].field_0, 
                           sub_d0f4fc02[arg1].field_0,
                           sub_d0f4fc02[arg1].field_256,
                           sub_d0f4fc02[arg1].field_512,
                           sub_d0f4fc02[arg1].field_768
                if unknown_0xd1878686(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg2 == address(arg2)
                    return purchased[arg1][address(arg2)]
                if unknown_0xdd3f9526(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return _controllerAddress
                require unknown_0xe319a3d9(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return _treasuryAddress
            if unknown_0x83197ef0(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require msg.sender == _owner
                require not uint8(stor3.field_192)
                selfdestruct(_treasuryAddress)
            if unknown_0x9a83b462(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg2 == address(arg2)
                require ext_code.size(sub_af6d07c7Address)
                staticcall sub_af6d07c7Address.totalSupplyAt(uint256 rg1) with:
                        gas gas_remaining wei
                       args sub_d0f4fc02[arg1].field_160
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_af6d07c7Address)
                staticcall sub_af6d07c7Address.balanceOfAt(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(arg2), sub_d0f4fc02[arg1].field_160
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if sub_d0f4fc02[arg1].field_768 and 10^6 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / sub_d0f4fc02[arg1].field_768:
                    revert with 'NH{q', 17
                if sub_d0f4fc02[arg1].field_768 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 <= sub_d0f4fc02[arg1].field_512:
                    return (sub_d0f4fc02[arg1].field_768 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6)
                return sub_d0f4fc02[arg1].field_512
            if uint32(call.func_hash) >> 224 != unknown_0xa6f2ae3a(?????):
                require unknown_0xaf6d07c7(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return sub_af6d07c7Address
            require uint8(stor3.field_192)
            require block.number >= sub_d0f4fc02[uint32(stor3.field_0)].field_160
            require ext_code.size(sub_af6d07c7Address)
            staticcall sub_af6d07c7Address.totalSupplyAt(uint256 rg1) with:
                    gas gas_remaining wei
                   args sub_d0f4fc02[uint32(stor3.field_0)].field_160
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_af6d07c7Address)
            staticcall sub_af6d07c7Address.balanceOfAt(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args msg.sender, sub_d0f4fc02[uint32(stor3.field_0)].field_160
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if sub_d0f4fc02[uint32(stor3.field_0)].field_768 and 10^6 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / sub_d0f4fc02[uint32(stor3.field_0)].field_768:
                revert with 'NH{q', 17
            if sub_d0f4fc02[uint32(stor3.field_0)].field_768 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 <= sub_d0f4fc02[uint32(stor3.field_0)].field_512:
                if sub_d0f4fc02[uint32(stor3.field_0)].field_768 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 < purchased[uint32(stor3.field_0)][msg.sender]:
                    revert with 'NH{q', 17
                if msg.value and stor4 > -1 / msg.value:
                    revert with 'NH{q', 17
                if not sub_d0f4fc02[uint32(stor3.field_0)].field_256:
                    revert with 'NH{q', 18
                require (sub_d0f4fc02[uint32(stor3.field_0)].field_768 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6) - purchased[uint32(stor3.field_0)][msg.sender] >= msg.value * stor4 / sub_d0f4fc02[uint32(stor3.field_0)].field_256
            else:
                if sub_d0f4fc02[uint32(stor3.field_0)].field_512 < purchased[uint32(stor3.field_0)][msg.sender]:
                    revert with 'NH{q', 17
                if msg.value and stor4 > -1 / msg.value:
                    revert with 'NH{q', 17
                if not sub_d0f4fc02[uint32(stor3.field_0)].field_256:
                    revert with 'NH{q', 18
                require sub_d0f4fc02[uint32(stor3.field_0)].field_512 - purchased[uint32(stor3.field_0)][msg.sender] >= msg.value * stor4 / sub_d0f4fc02[uint32(stor3.field_0)].field_256
            if purchased[uint32(stor3.field_0)][msg.sender] > !(msg.value * stor4 / sub_d0f4fc02[uint32(stor3.field_0)].field_256):
                revert with 'NH{q', 17
            purchased[uint32(stor3.field_0)][msg.sender] += msg.value * stor4 / sub_d0f4fc02[uint32(stor3.field_0)].field_256
            require ext_code.size(sub_d0f4fc02[uint32(stor3.field_0)].field_0)
            call sub_d0f4fc02[uint32(stor3.field_0)].field_0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, msg.value * stor4 / sub_d0f4fc02[uint32(stor3.field_0)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
            emit Sold((msg.value * stor4 / sub_d0f4fc02[uint32(stor3.field_0)].field_256), msg.sender);
        else:
            if unknown_0x43d726d6(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x10098ad5(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x1a695230(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x1e9bf0da(?????):
                            require unknown_0x1f58d195(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return sub_1f58d195
                        require not msg.value
                        require msg.sender == _owner
                        _owner = 0
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        require msg.sender == _owner
                        _owner = address(arg1)
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                require ext_code.size(sub_af6d07c7Address)
                staticcall sub_af6d07c7Address.totalSupplyAt(uint256 rg1) with:
                        gas gas_remaining wei
                       args sub_d0f4fc02[uint32(stor3.field_0)].field_160
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_af6d07c7Address)
                staticcall sub_af6d07c7Address.balanceOfAt(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(arg1), sub_d0f4fc02[uint32(stor3.field_0)].field_160
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if sub_d0f4fc02[uint32(stor3.field_0)].field_768 and 10^6 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / sub_d0f4fc02[uint32(stor3.field_0)].field_768:
                    revert with 'NH{q', 17
                if sub_d0f4fc02[uint32(stor3.field_0)].field_768 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 <= sub_d0f4fc02[uint32(stor3.field_0)].field_512:
                    return (sub_d0f4fc02[uint32(stor3.field_0)].field_768 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6)
                return sub_d0f4fc02[uint32(stor3.field_0)].field_512
            if unknown_0x43d726d6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require msg.sender == _controllerAddress
                require uint8(stor3.field_192)
                if sub_1f58d195 > 4294967294:
                    revert with 'NH{q', 17
                sub_1f58d195 = uint32(sub_1f58d195 + 1)
                uint8(stor3.field_192) = 0
                call _treasuryAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_d0f4fc02[uint32(stor3.field_0)].field_0)
                staticcall sub_d0f4fc02[uint32(stor3.field_0)].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_d0f4fc02[uint32(stor3.field_0)].field_0)
                call sub_d0f4fc02[uint32(stor3.field_0)].field_0.0xa9059cbb with:
                     gas gas_remaining wei
                    args _treasuryAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x48a801e5(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x522fe98e(?????):
                        require unknown_0x7f4e3076(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return bool(uint8(stor3.field_192))
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return purchased[uint32(stor3.field_0)][address(arg1)]
                require not msg.value
                require calldata.size - 4 >= 128
                require arg1 == address(arg1)
                require arg2 == arg2 % 72057594037927936
                require arg3 == Mask(152, 0, arg3)
                require arg4 == Mask(152, 0, arg4)
                require msg.sender == _controllerAddress
                require not uint8(stor3.field_192)
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] < 0x100000000000000000000000000000000000000
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_call.return_data[31 len 1] <= 24
                if not ext_call.return_data[31 len 1]:
                    stor4 = 1
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        stor4 = 10^ext_call.return_data[31 len 1]
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
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
                            revert with 'NH{q', 17
                        stor4 = s * t
                sub_d0f4fc02[uint32(stor3.field_0)].field_256 = Mask(152, 0, arg3)
                sub_d0f4fc02[uint32(stor3.field_0)].field_768 = Mask(152, 0, ext_call.return_data[0])
                sub_d0f4fc02[uint32(stor3.field_0)].field_512 = Mask(152, 0, arg4)
                sub_d0f4fc02[uint32(stor3.field_0)].field_0 = address(arg1)
                sub_d0f4fc02[uint32(stor3.field_0)].field_160 = arg2 % 72057594037927936
                uint8(stor3.field_192) = 1
}

function disown() {
    require msg.sender == _owner
    _owner = 0
}

function transfer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == _owner
    _owner = arg1
}

function close() {
    require msg.sender == _controllerAddress
    require uint8(stor3.field_192)
    if sub_1f58d195 > 4294967294:
        revert with 'NH{q', 17
    sub_1f58d195 = uint32(sub_1f58d195 + 1)
    uint8(stor3.field_192) = 0
    call _treasuryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_d0f4fc02[uint32(stor3.field_0)].field_0)
    staticcall sub_d0f4fc02[uint32(stor3.field_0)].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d0f4fc02[uint32(stor3.field_0)].field_0)
    call sub_d0f4fc02[uint32(stor3.field_0)].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args _treasuryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function sub_9a83b462(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require ext_code.size(sub_af6d07c7Address)
    staticcall sub_af6d07c7Address.totalSupplyAt(uint256 rg1) with:
            gas gas_remaining wei
           args sub_d0f4fc02[arg1].field_160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_af6d07c7Address)
    staticcall sub_af6d07c7Address.balanceOfAt(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg2), sub_d0f4fc02[arg1].field_160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if sub_d0f4fc02[arg1].field_768 and 10^6 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / sub_d0f4fc02[arg1].field_768:
        revert with 'NH{q', 17
    if sub_d0f4fc02[arg1].field_768 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 <= sub_d0f4fc02[arg1].field_512:
        return (sub_d0f4fc02[arg1].field_768 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6)
    return sub_d0f4fc02[arg1].field_512
}

function available(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_af6d07c7Address)
    staticcall sub_af6d07c7Address.totalSupplyAt(uint256 rg1) with:
            gas gas_remaining wei
           args sub_d0f4fc02[uint32(stor3.field_0)].field_160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_af6d07c7Address)
    staticcall sub_af6d07c7Address.balanceOfAt(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg1), sub_d0f4fc02[uint32(stor3.field_0)].field_160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if sub_d0f4fc02[uint32(stor3.field_0)].field_768 and 10^6 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / sub_d0f4fc02[uint32(stor3.field_0)].field_768:
        revert with 'NH{q', 17
    if sub_d0f4fc02[uint32(stor3.field_0)].field_768 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 <= sub_d0f4fc02[uint32(stor3.field_0)].field_512:
        return (sub_d0f4fc02[uint32(stor3.field_0)].field_768 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6)
    return sub_d0f4fc02[uint32(stor3.field_0)].field_512
}

function sub_48a801e5(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2 % 72057594037927936
    require arg3 == Mask(152, 0, arg3)
    require arg4 == Mask(152, 0, arg4)
    require msg.sender == _controllerAddress
    require not uint8(stor3.field_192)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < 0x100000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_call.return_data[31 len 1] <= 24
    if not ext_call.return_data[31 len 1]:
        stor4 = 1
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            stor4 = 10^ext_call.return_data[31 len 1]
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
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
                revert with 'NH{q', 17
            stor4 = s * t
    sub_d0f4fc02[uint32(stor3.field_0)].field_256 = Mask(152, 0, arg3)
    sub_d0f4fc02[uint32(stor3.field_0)].field_768 = Mask(152, 0, ext_call.return_data[0])
    sub_d0f4fc02[uint32(stor3.field_0)].field_512 = Mask(152, 0, arg4)
    sub_d0f4fc02[uint32(stor3.field_0)].field_0 = address(arg1)
    sub_d0f4fc02[uint32(stor3.field_0)].field_160 = arg2 % 72057594037927936
    uint8(stor3.field_192) = 1
}

function buy() payable {
    require uint8(stor3.field_192)
    require block.number >= sub_d0f4fc02[uint32(stor3.field_0)].field_160
    require ext_code.size(sub_af6d07c7Address)
    staticcall sub_af6d07c7Address.totalSupplyAt(uint256 rg1) with:
            gas gas_remaining wei
           args sub_d0f4fc02[uint32(stor3.field_0)].field_160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_af6d07c7Address)
    staticcall sub_af6d07c7Address.balanceOfAt(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args msg.sender, sub_d0f4fc02[uint32(stor3.field_0)].field_160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if sub_d0f4fc02[uint32(stor3.field_0)].field_768 and 10^6 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / sub_d0f4fc02[uint32(stor3.field_0)].field_768:
        revert with 'NH{q', 17
    if sub_d0f4fc02[uint32(stor3.field_0)].field_768 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 <= sub_d0f4fc02[uint32(stor3.field_0)].field_512:
        if sub_d0f4fc02[uint32(stor3.field_0)].field_768 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 < purchased[uint32(stor3.field_0)][msg.sender]:
            revert with 'NH{q', 17
        if msg.value and stor4 > -1 / msg.value:
            revert with 'NH{q', 17
        if not sub_d0f4fc02[uint32(stor3.field_0)].field_256:
            revert with 'NH{q', 18
        require (sub_d0f4fc02[uint32(stor3.field_0)].field_768 * 10^6 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6) - purchased[uint32(stor3.field_0)][msg.sender] >= msg.value * stor4 / sub_d0f4fc02[uint32(stor3.field_0)].field_256
    else:
        if sub_d0f4fc02[uint32(stor3.field_0)].field_512 < purchased[uint32(stor3.field_0)][msg.sender]:
            revert with 'NH{q', 17
        if msg.value and stor4 > -1 / msg.value:
            revert with 'NH{q', 17
        if not sub_d0f4fc02[uint32(stor3.field_0)].field_256:
            revert with 'NH{q', 18
        require sub_d0f4fc02[uint32(stor3.field_0)].field_512 - purchased[uint32(stor3.field_0)][msg.sender] >= msg.value * stor4 / sub_d0f4fc02[uint32(stor3.field_0)].field_256
    if purchased[uint32(stor3.field_0)][msg.sender] > !(msg.value * stor4 / sub_d0f4fc02[uint32(stor3.field_0)].field_256):
        revert with 'NH{q', 17
    purchased[uint32(stor3.field_0)][msg.sender] += msg.value * stor4 / sub_d0f4fc02[uint32(stor3.field_0)].field_256
    require ext_code.size(sub_d0f4fc02[uint32(stor3.field_0)].field_0)
    call sub_d0f4fc02[uint32(stor3.field_0)].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * stor4 / sub_d0f4fc02[uint32(stor3.field_0)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    emit Sold((msg.value * stor4 / sub_d0f4fc02[uint32(stor3.field_0)].field_256), msg.sender);
}



}
