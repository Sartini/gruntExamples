# http://gruntjs.com/creating-tasks
#
# =================================
# do
#
# $ npm install
#
# first. Then...
# =================================
# $ grunt
# =================================

module.exports = (grunt) ->
  
  grunt.registerTask 'asyncThing', 'do someting async.', ->
    done = @async()
    grunt.log.writeln 'Processing...'
    setTimeout ->
      grunt.log.writeln 'done!!!'
      done()
    , 1000

  grunt.registerTask 'default', ['asyncThing']
