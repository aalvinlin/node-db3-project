const database = require("../data/schemes-config");

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
};

function find() {
    return database("schemes");
}

function findById(id) {
    return database("schemes")
        .where({ id })
        .first();
}

function findSteps(id) {
    return database("steps")
        .join("schemes", "schemes.id", "=", "scheme_id")
        .select("schemes.id", "scheme_name", "step_number", "instructions")
        .where ({ "scheme_id": id })
        .orderBy("step_number")
}

function add(scheme) {
    return database("schemes")
        .insert(scheme, "id")
}

function update(changes, id) {
    return database("schemes")
        .where({ id })
        .update(changes)
}

function remove(id) {
    return database("schemes")
        .where({ id })
        .del()
}
